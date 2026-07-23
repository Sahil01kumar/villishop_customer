import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/main/providers/navigation_provider.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import 'package:villishop_customer/features/location/presentation/widgets/location_permission_sheet.dart';
import 'package:villishop_customer/features/location/providers/zone_provider.dart';
import 'package:villishop_customer/features/location/presentation/screens/coming_soon_screen.dart';
import 'package:villishop_customer/features/location/data/models/zone_model.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../../categories/presentation/screens/categories_screen.dart';
import '../../../cart/presentation/screens/cart_screen.dart';
import '../../../orders/presentation/screens/orders_screen.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import '../../../orders/providers/active_order_provider.dart';
import '../../../../core/persistence/persistence_keys.dart';
import '../../../../core/persistence/providers/persistence_providers.dart';
import '../../../../core/widgets/connectivity_banner.dart';
import '../../../../core/widgets/loading_widget.dart';

class MainScreen extends ConsumerStatefulWidget {
  final int? initialTab;

  const MainScreen({super.key, this.initialTab});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // Initialize navigation state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.initialTab != null) {
        ref.read(navigationIndexProvider.notifier).state = widget.initialTab!;
      } else {
        _restoreLastTab();
      }
    });

    _checkLocation();
  }

  void _restoreLastTab() {
    final lastTab =
        ref.read(localStorageProvider).get<int>(PersistenceKeys.lastTab);
    if (lastTab != null) {
      ref.read(navigationIndexProvider.notifier).state = lastTab;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didUpdateWidget(MainScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialTab != null &&
        widget.initialTab != oldWidget.initialTab) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(navigationIndexProvider.notifier).state = widget.initialTab!;
      });
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      ref.read(locationProvider.notifier).checkPermissionAndStartTracking();
    }
  }

  void _checkLocation() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final locState = ref.read(locationProvider);
      if (locState.permissionStatus == LocationPermissionStatus.initial ||
          locState.permissionStatus == LocationPermissionStatus.denied ||
          locState.permissionStatus == LocationPermissionStatus.disabled) {
        LocationPermissionSheet.show(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(navigationIndexProvider);
    final zoneAsync = ref.watch(currentZoneProvider);

    return zoneAsync.when(
      data: (zone) {
        if (zone == null || zone.status != ZoneStatus.active) {
          return const ComingSoonScreen();
        }

        final List<Widget> screens = [
          const HomeScreen(),
          const CategoriesScreen(),
          const CartScreen(),
          const OrdersScreen(),
          const ProfileScreen(),
        ];

        return Scaffold(
          body: Column(
            children: [
              const ConnectivityBanner(),
              Expanded(
                child: IndexedStack(
                  index: currentIndex,
                  children: screens,
                ),
              ),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: currentIndex,
            onDestinationSelected: (index) {
              ref.read(navigationIndexProvider.notifier).state = index;
              ref
                  .read(localStorageProvider)
                  .save(PersistenceKeys.lastTab, index);
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.category_outlined),
                selectedIcon: Icon(Icons.category),
                label: 'Categories',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                selectedIcon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: _OrdersIconWithBadge(),
                selectedIcon: _OrdersIconWithBadge(isSelected: true),
                label: 'Orders',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
      loading: () => const Scaffold(body: Center(child: LoadingWidget())),
      error: (err, stack) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error checking serviceability: $err'),
              TextButton(
                onPressed: () => ref.invalidate(currentZoneProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrdersIconWithBadge extends ConsumerWidget {
  final bool isSelected;
  const _OrdersIconWithBadge({this.isSelected = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasActiveOrder = ref.watch(activeOrderProvider) != null;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(isSelected ? Icons.receipt_long : Icons.receipt_long_outlined),
        if (hasActiveOrder)
          Positioned(
            top: -2,
            right: -2,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
      ],
    );
  }
}
