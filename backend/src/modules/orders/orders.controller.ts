import { Controller, Post, Body, Get, Param, Patch, UseGuards, Request } from '@nestjs/common';
import { ApiTags, ApiOperation, ApiBearerAuth } from '@nestjs/swagger';
import { OrdersService } from './orders.service';
import { CreateOrderDto } from './dto/create-order.dto';
import { OrderStatus } from '@prisma/client';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';

@ApiTags('orders')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller('orders')
export class OrdersController {
  constructor(private readonly ordersService: OrdersService) {}

  @Post()
  @ApiOperation({ summary: 'Create a new order' })
  async create(@Request() req, @Body() dto: CreateOrderDto) {
    return this.ordersService.createOrder(req.user.id, dto);
  }

  @Patch(':id/status')
  @ApiOperation({ summary: 'Update order status (Internal/Admin/Rider)' })
  async updateStatus(
    @Param('id') id: string,
    @Body('status') status: OrderStatus,
    @Body('metadata') metadata?: any,
  ) {
    return this.ordersService.updateStatus(id, status, metadata);
  }

  @Get('current')
  @ApiOperation({ summary: 'Get active orders for current user' })
  async getCurrent(@Request() req) {
    // Implementation in service
  }

  @Get('history')
  @ApiOperation({ summary: 'Get order history for current user' })
  async getHistory(@Request() req) {
    // Implementation in service
  }

  @Get(':id')
  @ApiOperation({ summary: 'Get order details' })
  async getOne(@Param('id') id: string) {
    // Implementation in service
  }
}
