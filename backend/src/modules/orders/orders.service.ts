import { Injectable, BadRequestException, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { OrderStatus, Order } from '@prisma/client';
import { CreateOrderDto } from './dto/create-order.dto';
import { RealtimeGateway } from '../realtime/realtime.gateway';

@Injectable()
export class OrdersService {
  constructor(
    private prisma: PrismaService,
    private realtime: RealtimeGateway,
  ) {}

  async createOrder(userId: string, dto: CreateOrderDto): Promise<Order> {
    const orderNumber = `VS${Date.now()}${Math.floor(Math.random() * 1000)}`;

    const order = await this.prisma.order.create({
      data: {
        orderNumber,
        customerId: userId,
        totalAmount: dto.totalAmount,
        status: OrderStatus.PLACED,
        items: {
          create: dto.items.map(item => ({
            productId: item.productId,
            quantity: item.quantity,
            price: item.price,
          })),
        },
        timeline: {
          create: {
            status: OrderStatus.PLACED,
            title: 'Order Placed',
            description: 'Your order has been successfully placed.',
          },
        },
      },
      include: { items: true, timeline: true },
    });

    this.realtime.emitToUser(userId, 'order_created', order);
    return order;
  }

  async updateStatus(orderId: string, newStatus: OrderStatus, metadata?: any): Promise<Order> {
    const order = await this.prisma.order.findUnique({ where: { id: orderId } });
    if (!order) throw new NotFoundException('Order not found');

    if (!this.isValidTransition(order.status, newStatus)) {
      throw new BadRequestException(`Invalid status transition from ${order.status} to ${newStatus}`);
    }

    const updatedOrder = await this.prisma.order.update({
      where: { id: orderId },
      data: {
        status: newStatus,
        timeline: {
          create: {
            status: newStatus,
            title: this.getStatusTitle(newStatus),
            description: this.getStatusDescription(newStatus),
          },
        },
        logs: {
          create: {
            oldStatus: order.status,
            newStatus,
            metadata,
          },
        },
      },
    });

    this.realtime.emitToUser(order.customerId, 'order_updated', updatedOrder);
    return updatedOrder;
  }

  private isValidTransition(from: OrderStatus, to: OrderStatus): boolean {
    const transitions: Record<OrderStatus, OrderStatus[]> = {
      [OrderStatus.PLACED]: [OrderStatus.CONFIRMED, OrderStatus.CANCELLED],
      [OrderStatus.CONFIRMED]: [OrderStatus.ACCEPTED, OrderStatus.CANCELLED],
      [OrderStatus.ACCEPTED]: [OrderStatus.PREPARING, OrderStatus.CANCELLED],
      [OrderStatus.PREPARING]: [OrderStatus.PACKED],
      [OrderStatus.PACKED]: [OrderStatus.READY_FOR_PICKUP],
      [OrderStatus.READY_FOR_PICKUP]: [OrderStatus.OUT_FOR_DELIVERY],
      [OrderStatus.OUT_FOR_DELIVERY]: [OrderStatus.DELIVERED, OrderStatus.FAILED],
      [OrderStatus.DELIVERED]: [OrderStatus.RETURNED],
      [OrderStatus.CANCELLED]: [],
      [OrderStatus.FAILED]: [OrderStatus.REFUNDED],
      [OrderStatus.REFUNDED]: [],
      [OrderStatus.RETURNED]: [OrderStatus.REFUNDED],
    };

    return transitions[from].includes(to);
  }

  private getStatusTitle(status: OrderStatus): string {
    return status.replace(/_/g, ' ');
  }

  private getStatusDescription(status: OrderStatus): string {
    // Add logic for dynamic descriptions
    return `Order status updated to ${status}`;
  }
}
