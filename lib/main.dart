import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'core/config/supabase_app_config.dart';
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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Supabase is optional during local UI development. Configure it only with
  // the dedicated VilliShop project's URL and publishable key.
  if (SupabaseAppConfig.isConfigured) {
    await Supabase.initialize(
      url: SupabaseAppConfig.url,
      publishableKey: SupabaseAppConfig.publishableKey,
    );
  }

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeServices();
    });
  }

  Future<void> _initializeServices() async {
    if (!mounted) return;

    try {
      await ref.read(appRecoveryServiceProvider).restoreAppState();
      if (!mounted) return;

      await ref.read(notificationManagerProvider).initialize();
      if (!mounted) return;

      ref.read(notificationEngineProvider);
      ref.read(activeOrderIdProvider);

      // The old realtime mock used a hard-coded dummy token. Do not connect
      // with fake credentials; wire the Supabase realtime adapter in the next
      // integration step after the dedicated project is provisioned.

      if (mounted) {
        setState(() => _isInitialized = true);
      }
    } catch (e) {
      debugPrint('Initialization error: $e');
      if (mounted) setState(() => _isInitialized = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final settings = ref.watch(settingsProvider);

    ref.listen(authProvider, (previous, next) {
      next.maybeWhen(
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
