import 'package:flutter_test/flutter_test.dart';
import 'package:villishop_customer/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:villishop_customer/core/services/shared_pref_service.dart';
import 'package:villishop_customer/features/authentication/providers/auth_provider.dart';
import 'package:villishop_customer/features/authentication/domain/repositories/auth_repository.dart';
import 'package:villishop_customer/features/authentication/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

/// A Fake Auth Repository that doesn't depend on Firebase.
/// This allows us to test the widget tree without initializing Firebase.
class FakeAuthRepository implements AuthRepository {
  @override
  Stream<User?> get authStateChanges => Stream.value(null);

  @override
  Future<UserModel?> getCurrentUser() async => null;

  @override
  Future<void> loginWithPhone(String phoneNumber,
      {required void Function(String verificationId, int? resendToken) codeSent,
      required void Function(FirebaseAuthException e)
          verificationFailed}) async {}

  @override
  Future<void> sendEmailVerification() async {}

  @override
  Future<void> sendPasswordResetEmail(String email) async {}

  @override
  Future<UserCredential> signInWithEmailPassword(
          String email, String password) async =>
      throw UnimplementedError();

  @override
  Future<UserCredential> signInWithGoogle() async =>
      throw UnimplementedError();

  @override
  Future<void> signOut() async {}

  @override
  Future<UserCredential> signUpWithEmailPassword(
          String email, String password) async =>
      throw UnimplementedError();

  @override
  Future<void> updateDisplayName(String name) async {}

  @override
  Future<void> updateProfile(UserModel user) async {}

  @override
  Future<UserCredential> verifyOTP(
          String verificationId, String smsCode) async =>
      throw UnimplementedError();
}

void main() {
  testWidgets('Splash screen smoke test', (WidgetTester tester) async {
    // Initialize the test binding
    TestWidgetsFlutterBinding.ensureInitialized();

    // Mock SharedPreferences
    SharedPreferences.setMockInitialValues({});
    final sharedPrefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          // Override SharedPreferences with a mockable instance
          sharedPreferencesServiceProvider
              .overrideWithValue(SharedPreferenceService(sharedPrefs)),
          // Override the Auth Repository to bypass Firebase initialization
          // This is the production-ready way to test Riverpod apps with Firebase
          authRepositoryProvider.overrideWithValue(FakeAuthRepository()),
        ],
        child: const VilliShopApp(),
      ),
    );

    // Re-render to start the splash animation
    await tester.pump();

    // The splash screen has a 2-second delay in _initAuth.
    // Advance the clock to ensure the timer completes and doesn't leak.
    await tester.pump(const Duration(seconds: 3));

    // Handle any remaining animations or routing microtasks
    await tester.pump(const Duration(milliseconds: 500));

    // Verify that the app initialized successfully and the VilliShopApp widget exists
    expect(find.byType(VilliShopApp), findsOneWidget);
  });
}
