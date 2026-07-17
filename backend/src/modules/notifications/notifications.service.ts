import { Injectable } from '@nestjs/common';
import * as admin from 'firebase-admin';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class NotificationsService {
  constructor(private prisma: PrismaService) {
    if (!admin.apps.length) {
      admin.initializeApp({
        credential: admin.credential.cert(process.env.FIREBASE_CONFIG_PATH),
      });
    }
  }

  async sendPushNotification(userId: string, title: string, body: string, payload?: any) {
    const tokens = await this.prisma.deviceToken.findMany({
      where: { userId },
    });

    if (tokens.length === 0) return;

    const message: admin.messaging.MulticastMessage = {
      tokens: tokens.map(t => t.token),
      notification: { title, body },
      data: payload || {},
    };

    try {
      const response = await admin.messaging().sendEachForMulticast(message);
      console.log(`${response.successCount} messages were sent successfully`);
    } catch (error) {
      console.error('Error sending push notification:', error);
    }

    // Save to history
    await this.prisma.notification.create({
      data: {
        userId,
        title,
        body,
        payload,
      },
    });
  }

  async saveToken(userId: string, token: string, platform?: string) {
    return this.prisma.deviceToken.upsert({
      where: { token },
      update: { userId, platform },
      create: { userId, token, platform },
    });
  }
}
