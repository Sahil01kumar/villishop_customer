import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/authentication/providers/auth_provider.dart';
import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../features/authentication/presentation/screens/forgot_password_screen.dart';
import '../../features/authentication/presentation/screens/phone_login_screen.dart';
import '../../features/authentication/presentation/screens/otp_verification_screen.dart';
import '../../features/main/presentation/screens/main_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import '../../features/location/presentation/screens/address_list_screen.dart';
import '../../features/location/presentation/screens/add_edit_address_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String phoneLogin = '/phone-login';
  static const String otp = '/otp';
  static const String search = '/search';
  static const String addresses = '/addresses';
  static const String addAddress = '/add-address';
}

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    redirect: (context, state) {
      final isSplash = state.matchedLocation == AppRoutes.splash;
      final isAuthRoute = state.matchedLocation == AppRoutes.login || 
                          state.matchedLocation == AppRoutes.register ||
                          state.matchedLocation == AppRoutes.forgotPassword ||
                          state.matchedLocation == AppRoutes.phoneLogin ||
                          state.matchedLocation == AppRoutes.otp;

      return authState.when(
        initial: () => null,
        loading: () => null,
        authenticated: (user) {
          if (isSplash || isAuthRoute) return AppRoutes.home;
          return null;
        },
        unauthenticated: () {
          if (isSplash) return AppRoutes.login;
          if (state.matchedLocation == AppRoutes.home) return AppRoutes.login;
          return null;
        },
        error: (message) {
          if (isSplash) return AppRoutes.login;
          return null;
        },
      );
    },
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.phoneLogin,
        builder: (context, state) => const PhoneLoginScreen(),
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
        builder: (context, state) => const AddEditAddressScreen(),
      ),
    ],
  );
});
