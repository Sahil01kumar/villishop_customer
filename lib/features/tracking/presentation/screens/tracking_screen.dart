import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/core/maps/widgets/enterprise_tracking_map.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';
import 'package:villishop_customer/features/tracking/providers/tracking_provider.dart';
import 'package:villishop_customer/features/tracking/providers/rider_tracking_provider.dart';
import 'package:villishop_customer/features/orders/providers/order_provider.dart';
import 'package:villishop_customer/features/orders/data/models/order_model.dart';
import 'package:villishop_customer/features/orders/domain/entities/order_lifecycle_state.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import '../widgets/enterprise_tracking_sheet.dart';

class TrackingScreen extends ConsumerStatefulWidget {
  final String orderId;
  const TrackingScreen({required this.orderId, super.key});

  @override
  ConsumerState<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends ConsumerState<TrackingScreen> {
  final DraggableScrollableController _sheetController =
      DraggableScrollableController();

  @override
  void initState() {
    super.initState();
    // Pre-fetch order details if not already available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (ref.read(orderDetailsProvider(widget.orderId)).value == null) {
        ref.invalidate(orderDetailsProvider(widget.orderId));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final trackingAsync = ref.watch(trackingProvider(widget.orderId));
    final orderAsync = ref.watch(orderDetailsProvider(widget.orderId));
    final locationState = ref.watch(locationProvider);

    // Activate Tracking Engine
    ref.watch(trackingEngineProvider(widget.orderId));

    // Listen for delivery completion to trigger rating flow
    ref.listen<AsyncValue<OrderTrackingModel>>(trackingProvider(widget.orderId),
        (prev, next) {
      if (next.value?.status == TrackingStatus.delivered) {
        _handleDeliveryCompletion(context, ref, widget.orderId);
      }
    });

    if (locationState.permissionStatus != LocationPermissionStatus.granted) {
      return _PermissionRequiredView();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: orderAsync.when(
        data: (order) {
          if (order == null) {
            return _buildErrorView('Order details not found.',
                () => ref.invalidate(orderDetailsProvider(widget.orderId)));
          }

          return trackingAsync.when(
            data: (tracking) => _buildMainContent(context, tracking, order),
            loading: () => const Center(child: LoadingWidget()),
            error: (e, stack) => _buildErrorView(
              'Tracking unavailable. Reconnecting...',
              () => ref.invalidate(trackingProvider(widget.orderId)),
            ),
          );
        },
        loading: () => const Center(child: LoadingWidget()),
        error: (e, stack) => _buildErrorView('Failed to load order details.',
            () => ref.invalidate(orderDetailsProvider(widget.orderId))),
      ),
    );
  }

  Widget _buildMainContent(
      BuildContext context, OrderTrackingModel tracking, OrderModel order) {
    final bool isDelivered = tracking.status == TrackingStatus.delivered;

    return Stack(
      children: [
        // 1. Full Screen Live Map
        Positioned.fill(
          bottom: MediaQuery.of(context).size.height *
              0.3, // Visible area below sheet
          child: EnterpriseTrackingMap(
            initialCameraPosition: LatLng(
              tracking.destinationLocation.latitude,
              tracking.destinationLocation.longitude,
            ),
            autoFitBounds: true,
          ),
        ),

        // 2. Custom Back Button
        Positioned(
          top: MediaQuery.of(context).padding.top + 12,
          left: 16,
          child: _RoundIconButton(
            icon: Icons.arrow_back_ios_new_rounded,
            onPressed: () => context.pop(),
          ),
        ),

        // 3. Floating Quick Actions (Top Right)
        Positioned(
          top: MediaQuery.of(context).padding.top + 12,
          right: 16,
          child: Row(
            children: [
              _RoundIconButton(
                  icon: Icons.support_agent_rounded,
                  onPressed: () => context.push(AppRoutes.supportHub)),
              const SizedBox(width: 12),
              _RoundIconButton(icon: Icons.share_rounded, onPressed: () {}),
            ],
          ),
        ),

        // 4. Draggable Bottom Sheet (Premium UX)
        DraggableScrollableSheet(
          controller: _sheetController,
          initialChildSize: 0.42,
          minChildSize: 0.42,
          maxChildSize: 0.95,
          snap: true,
          builder: (context, scrollController) {
            return EnterpriseTrackingSheet(
              tracking: tracking,
              order: order,
              scrollController: scrollController,
            );
          },
        ),

        // 5. Success Overlays (If Delivered)
        if (isDelivered) _buildSuccessOverlay(context),
      ],
    );
  }

  Widget _buildSuccessOverlay(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/success_anim.json',
                height: 250, repeat: false),
            const SizedBox(height: 24),
            const Text('DELIVERED SUCCESSFULLY!',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    color: Colors.green)),
            const SizedBox(height: 8),
            const Text('We hope you enjoyed VilliShop service',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          ],
        ),
      ).animate().fadeIn(),
    );
  }

  Widget _buildErrorView(String message, VoidCallback onRetry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline_rounded, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(message, style: const TextStyle(fontWeight: FontWeight.bold)),
          TextButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }

  Future<void> _handleDeliveryCompletion(
      BuildContext context, WidgetRef ref, String orderId) async {
    final order = await ref.read(orderRepositoryProvider).getOrderById(orderId);
    if (order != null) {
      await ref
          .read(orderRepositoryProvider)
          .updateOrderStatus(orderId, OrderLifecycleState.delivered);
      ref.read(activeOrderIdProvider.notifier).clear();
      if (context.mounted) {
        context.go(AppRoutes.orderDelivered, extra: order);
      }
    }
  }
}

class _RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const _RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(10),
                blurRadius: 10,
                offset: const Offset(0, 4)),
          ],
        ),
        child: Icon(icon, size: 20, color: Colors.black87),
      ),
    );
  }
}

class _PermissionRequiredView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/location_anim.json', height: 180),
            const SizedBox(height: 32),
            const Text('Location Access Needed',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    letterSpacing: -0.5)),
            const SizedBox(height: 12),
            const Text(
                'To track your delivery live on the map, we need your location permission.',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.grey, fontSize: 15, height: 1.5)),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => context.push(AppRoutes.home),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('Back to Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
