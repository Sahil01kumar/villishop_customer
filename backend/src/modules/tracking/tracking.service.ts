import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { RealtimeGateway } from '../realtime/realtime.gateway';

@Injectable()
export class TrackingService {
  constructor(
    private prisma: PrismaService,
    private realtime: RealtimeGateway,
  ) {}

  async updateLocation(riderId: string, orderId: string, lat: number, lng: number, heading?: number, speed?: number) {
    const session = await this.prisma.trackingSession.upsert({
      where: { orderId },
      update: {
        currentLat: lat,
        currentLng: lng,
        heading,
        speed,
        riderId,
      },
      create: {
        orderId,
        riderId,
        currentLat: lat,
        currentLng: lng,
        heading,
        speed,
      },
    });

    await this.prisma.locationHistory.create({
      data: {
        sessionId: session.id,
        lat,
        lng,
        heading,
        speed,
      },
    });

    // Broadcast to order room
    this.realtime.emitToOrder(orderId, 'partner_location_changed', {
      orderId,
      latitude: lat,
      longitude: lng,
      heading,
      speed,
      timestamp: new Date(),
    });
  }

  async getTracking(orderId: string) {
    const session = await this.prisma.trackingSession.findUnique({
      where: { orderId },
      include: { order: true },
    });
    if (!session) throw new NotFoundException('Tracking not found');
    return session;
  }
}
