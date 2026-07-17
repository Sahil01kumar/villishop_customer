import 'package:firebase_auth/firebase_auth.dart';
import '../../data/models/user_model.dart';

abstract class AuthRepository {
  Stream<User?> get authStateChanges;

  // Phone Auth
  Future<void> loginWithPhone(
    String phoneNumber, {
    required void Function(String verificationId, int? resendToken) codeSent,
    required void Function(FirebaseAuthException e) verificationFailed,
  });
  Future<UserCredential> verifyOTP(String verificationId, String smsCode);

  // Email/Password Auth
  Future<UserCredential> signInWithEmailPassword(String email, String password);
  Future<UserCredential> signUpWithEmailPassword(String email, String password);
  Future<void> sendPasswordResetEmail(String email);
  Future<void> sendEmailVerification();

  // Social Auth
  Future<UserCredential> signInWithGoogle();

  // Account actions
  Future<void> signOut();
  Future<UserModel?> getCurrentUser();
  Future<void> updateDisplayName(String name);
  Future<void> updateProfile(UserModel user);
}
