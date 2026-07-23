import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/authentication/providers/auth_provider.dart';
import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../features/authentication/presentation/screens/otp_verification_screen.dart';
import '../../features/main/presentation/screens/main_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import '../../features/location/presentation/screens/address_list_screen.dart';
import '../../features/location/presentation/screens/add_edit_address_screen.dart';
import '../../features/location/data/models/address_model.dart';
import '../../features/shops/presentation/screens/shops_screen.dart';
import '../../features/shops/presentation/screens/shop_details_screen.dart';
import '../../features/products/presentation/screens/product_catalog_screen.dart';
import '../../features/products/presentation/screens/product_details_screen.dart';
import '../../features/reviews/presentation/screens/reviews_list_screen.dart';
import '../../features/reviews/presentation/screens/write_review_screen.dart';
import '../../features/reviews/presentation/screens/order_rating_screen.dart';
import '../../features/tracking/presentation/screens/tracking_map_screen.dart';
import '../../features/orders/presentation/screens/order_delivered_success_screen.dart';
import '../../features/wishlist/presentation/screens/wishlist_screen.dart';
import '../../features/offers/presentation/screens/offers_screen.dart';
import '../../features/wallet/presentation/screens/wallet_screen.dart';

import '../../features/categories/providers/category_provider.dart';
import '../../features/orders/presentation/screens/order_review_screen.dart';
import '../../features/payment/presentation/screens/payment_selection_screen.dart';
import '../../features/orders/presentation/screens/order_success_screen.dart';
import '../../features/orders/presentation/screens/order_tracking_screen.dart';
import '../../features/notifications/presentation/screens/notification_center_screen.dart';
import '../../features/communication/presentation/screens/chat_screen.dart';
import '../../features/communication/presentation/screens/support_hub_screen.dart';
import '../../features/location/presentation/screens/map_picker_screen.dart';
import '../../features/settings/presentation/screens/about_screen.dart';
import '../../features/location/presentation/screens/address_search_screen.dart';

import '../../features/communication/data/models/chat_model.dart';
import '../../features/orders/data/models/order_model.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String categories = '/categories';
  static const String login = '/login';
  static const String register = '/register';
  static const String otp = '/otp';
  static const String search = '/search';
  static const String addresses = '/addresses';
  static const String addAddress = '/add-address';
  static const String shops = '/shops';
  static const String shopDetails = '/shop-details';
  static const String productCatalog = '/product-catalog';
  static const String productDetails = '/product-details';
  static const String reviews = '/reviews';
  static const String writeReview = '/write-review';
  static const String wishlist = '/wishlist';
  static const String offers = '/offers';
  static const String wallet = '/wallet';
  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';
  static const String orderReview = '/order-review';
  static const String paymentSelection = '/payment-selection';
  static const String orderSuccess = '/order-success';
  static const String orderTracking = '/order-tracking';
  static const String notifications = '/notifications';
  static const String chat = '/chat';
  static const String supportHub = '/support-hub';
  static const String mapPicker = '/map-picker';
  static const String orderRating = '/order-rating';
  static const String trackingMap = '/tracking-map';
  static const String orderDelivered = '/order-delivered';
  static const String cart = '/cart';
  static const String orders = '/orders';
  static const String settings = '/settings';
  static const String addressSearch = '/address-search';
  static const String about = '/about';
}

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    redirect: (context, state) {
      final isSplash = state.matchedLocation == AppRoutes.splash;
      final isRegister = state.matchedLocation == AppRoutes.register;
      final isAuthRoute = state.matchedLocation == AppRoutes.login ||
          state.matchedLocation == AppRoutes.otp;

      return authState.maybeWhen(
        authenticated: (user) {
          if (!user.isProfileCompleted) {
            return isRegister ? null : AppRoutes.register;
          }

          if (isSplash || isAuthRoute || isRegister) return AppRoutes.home;
          return null;
        },
        unauthenticated: () {
          if (isSplash) return AppRoutes.login;
          if (!isAuthRoute && !isRegister) return AppRoutes.login;
          return null;
        },
        orElse: () => null,
      );
    },
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      // Tab 0: Home
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const MainScreen(initialTab: 0),
      ),
      // Tab 1: Categories
      GoRoute(
        path: AppRoutes.categories,
        builder: (context, state) => const MainScreen(initialTab: 1),
      ),
      GoRoute(
        path: '${AppRoutes.categories}/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          if (id != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(pendingCategoryIdProvider.notifier).state = id;
            });
          }
          return const MainScreen(initialTab: 1);
        },
      ),
      // Tab 2: Cart
      GoRoute(
        path: AppRoutes.cart,
        builder: (context, state) => const MainScreen(initialTab: 2),
      ),
      // Tab 3: Orders
      GoRoute(
        path: AppRoutes.orders,
        builder: (context, state) => const MainScreen(initialTab: 3),
      ),
      // Tab 4: Profile
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) => const MainScreen(initialTab: 4),
      ),

      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.otp,
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>?;
          return OTPVerificationScreen(
            verificationId: extras?['verificationId'] ?? '',
            phoneNumber: extras?['phoneNumber'] ?? '',
          );
        },
      ),
      GoRoute(
        path: AppRoutes.search,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: AppRoutes.addresses,
        builder: (context, state) => const AddressListScreen(),
      ),
      GoRoute(
        path: AppRoutes.addAddress,
        builder: (context, state) {
          final address = state.extra as AddressModel?;
          return AddEditAddressScreen(address: address);
        },
      ),
      GoRoute(
        path: AppRoutes.shops,
        builder: (context, state) => const ShopsScreen(),
      ),
      GoRoute(
        path: '${AppRoutes.shopDetails}/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ShopDetailsScreen(shopId: id);
        },
      ),
      GoRoute(
        path: '${AppRoutes.productCatalog}/:shopId',
        builder: (context, state) {
          final shopId = state.pathParameters['shopId']!;
          final shopName =
              (state.extra as Map<String, dynamic>?)?['shopName'] ?? 'Shop';
          return ProductCatalogScreen(shopId: shopId, shopName: shopName);
        },
      ),
      GoRoute(
        path: '${AppRoutes.productDetails}/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ProductDetailsScreen(productId: id);
        },
      ),
      GoRoute(
        path: AppRoutes.reviews,
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>?;
          return ReviewsListScreen(
            targetId: extras?['targetId'] ?? '',
            targetName: extras?['targetName'] ?? 'Items',
          );
        },
      ),
      GoRoute(
        path: AppRoutes.writeReview,
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>?;
          return WriteReviewScreen(
            targetId: extras?['targetId'] ?? '',
            targetName: extras?['targetName'] ?? 'Items',
          );
        },
      ),
      GoRoute(
        path: AppRoutes.wishlist,
        builder: (context, state) => const WishlistScreen(),
      ),
      GoRoute(
        path: AppRoutes.offers,
        builder: (context, state) => const OffersScreen(),
      ),
      GoRoute(
        path: AppRoutes.wallet,
        builder: (context, state) => const WalletScreen(),
      ),
      GoRoute(
        path: AppRoutes.orderReview,
        builder: (context, state) => const OrderReviewScreen(),
      ),
      GoRoute(
        path: AppRoutes.paymentSelection,
        builder: (context, state) => const PaymentSelectionScreen(),
      ),
      GoRoute(
        path: AppRoutes.orderSuccess,
        builder: (context, state) {
          final order = state.extra as OrderModel;
          return OrderSuccessScreen(order: order);
        },
      ),
      GoRoute(
        path: '${AppRoutes.orderTracking}/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return OrderTrackingScreen(orderId: id);
        },
      ),
      GoRoute(
        path: AppRoutes.notifications,
        builder: (context, state) => const NotificationCenterScreen(),
      ),
      GoRoute(
        path: AppRoutes.chat,
        builder: (context, state) {
          final thread = state.extra as ChatThreadModel;
          return ChatScreen(thread: thread);
        },
      ),
      GoRoute(
        path: AppRoutes.supportHub,
        builder: (context, state) => const SupportHubScreen(),
      ),
      GoRoute(
        path: AppRoutes.mapPicker,
        builder: (context, state) => const MapPickerScreen(),
      ),
      GoRoute(
        path: AppRoutes.orderRating,
        builder: (context, state) {
          final order = state.extra as OrderModel;
          return OrderRatingScreen(order: order);
        },
      ),
      GoRoute(
        path: AppRoutes.orderDelivered,
        builder: (context, state) {
          final order = state.extra as OrderModel;
          return OrderDeliveredSuccessScreen(order: order);
        },
      ),
      GoRoute(
        path: '${AppRoutes.trackingMap}/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return TrackingMapScreen(orderId: id);
        },
      ),
      GoRoute(
        path: AppRoutes.settings,
        builder: (context, state) => const SupportHubScreen(),
      ),
      GoRoute(
        path: AppRoutes.addressSearch,
        builder: (context, state) => const AddressSearchScreen(),
      ),
      GoRoute(
        path: AppRoutes.about,
        builder: (context, state) => const AboutScreen(),
      ),
    ],
  );
});
