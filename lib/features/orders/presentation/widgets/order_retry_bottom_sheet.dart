import 'package:flutter/material.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/orders/data/models/order_placement_status.dart';

class OrderRetryBottomSheet extends StatelessWidget {
  final OrderPlacementStatus status;
  final String message;
  final VoidCallback onRetry;
  final VoidCallback onCancel;

  const OrderRetryBottomSheet({
    super.key,
    required this.status,
    required this.message,
    required this.onRetry,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(AppSpacing.m, 12, AppSpacing.m, 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2)),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: _getErrorColor().withAlpha(15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              _getErrorIcon(),
              color: _getErrorColor(),
              size: 48,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            _getErrorTitle(),
            style: const TextStyle(
                fontWeight: FontWeight.w900, fontSize: 22, letterSpacing: -0.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              message,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onCancel,
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(0, 56),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    side: BorderSide(color: Colors.grey[300]!),
                  ),
                  child: const Text('CANCEL',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.black)),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: onRetry,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(0, 56),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: Text(
                    status == OrderPlacementStatus.paymentFailed
                        ? 'RETRY PAYMENT'
                        : 'RETRY NOW',
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getErrorColor() {
    switch (status) {
      case OrderPlacementStatus.networkError:
        return Colors.orange;
      case OrderPlacementStatus.paymentFailed:
        return Colors.red;
      case OrderPlacementStatus.timeout:
        return Colors.blue;
      default:
        return Colors.red[900]!;
    }
  }

  IconData _getErrorIcon() {
    switch (status) {
      case OrderPlacementStatus.networkError:
        return Icons.wifi_off_rounded;
      case OrderPlacementStatus.paymentFailed:
        return Icons.payment_outlined;
      case OrderPlacementStatus.timeout:
        return Icons.timer_off_outlined;
      case OrderPlacementStatus.serverError:
        return Icons.dns_outlined;
      default:
        return Icons.error_outline_rounded;
    }
  }

  String _getErrorTitle() {
    switch (status) {
      case OrderPlacementStatus.networkError:
        return 'No Internet';
      case OrderPlacementStatus.paymentFailed:
        return 'Payment Failed';
      case OrderPlacementStatus.timeout:
        return 'Taking too long';
      case OrderPlacementStatus.serverError:
        return 'Server Busy';
      default:
        return 'Oops! Order Failed';
    }
  }
}
