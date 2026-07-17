import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'core/constants/app_strings.dart';
import 'core/services/shared_pref_service.dart';
import 'core/services/notification_manager.dart';
import 'core/realtime/providers/realtime_providers.dart';
import 'core/persistence/services/app_recovery_service.dart';
import 'core/persistence/providers/settings_provider.dart';
import 'features/notifications/presentation/widgets/notification_overlay_manager.dart';
import 'features/notifications/domain/services/notification_engine.dart';
import 'features/communication/presentation/widgets/calling_overlay.dart';
import 'features/tracking/providers/tracking_provider.dart';
import 'features/authentication/providers/auth_provider.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    await Firebase.initializeApp();
  } catch (_) {}
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp();
    }
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  } catch (e) {
    debugPrint('Firebase initialization failed: $e');
  }

  final sharedPrefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesServiceProvider
            .overrideWithValue(SharedPreferenceService(sharedPrefs)),
      ],
      child: const VilliShopApp(),
    ),
  );
}

class VilliShopApp extends ConsumerStatefulWidget {
  const VilliShopApp({super.key});

  @override
  ConsumerState<VilliShopApp> createState() => _VilliShopAppState();
}

class _VilliShopAppState extends ConsumerState<VilliShopApp> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    // Use addPostFrameCallback to ensure initialization starts after the first build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeServices();
    });
  }

  Future<void> _initializeServices() async {
    if (!mounted) return;

    try {
      // 1. Restore App State from Persistence
      await ref.read(appRecoveryServiceProvider).restoreAppState();

      if (!mounted) return;

      // 2. Initialize Notification Manager
      await ref.read(notificationManagerProvider).initialize();

      if (!mounted) return;

      // 3. Trigger Global Engines
      ref.read(notificationEngineProvider);
      ref.read(activeOrderIdProvider);

      // 4. Connect Realtime Engine if authenticated
      final authState = ref.read(authProvider);
      authState.maybeWhen(
        authenticated: (user) {
          if (mounted) {
            ref.read(realtimeEngineProvider).connect('dummy_token');
          }
        },
        orElse: () {},
      );

      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    } catch (e) {
      debugPrint('Initialization error: $e');
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final settings = ref.watch(settingsProvider);

    // Listen for Auth changes
    ref.listen(authProvider, (previous, next) {
      next.maybeWhen(
        authenticated: (user) {
          if (mounted && _isInitialized) {
            ref.read(realtimeEngineProvider).connect('dummy_token');
          }
        },
        unauthenticated: () {
          if (mounted && _isInitialized) {
            ref.read(realtimeEngineProvider).disconnect();
          }
        },
        orElse: () {},
      );
    });

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: settings.themeMode,
      routerConfig: router,
      locale: Locale(settings.language),
      builder: (context, child) {
        return Stack(
          children: [
            if (child != null) NotificationOverlayManager(child: child),
            const CallingOverlay(),
          ],
        );
      },
    );
  }
}
