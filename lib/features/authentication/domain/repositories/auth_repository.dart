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

  // Social Auth
  Future<UserCredential> signInWithGoogle();

  // Account actions
  Future<void> signOut();
  Future<UserModel?> getCurrentUser();
  Future<void> updateProfile(UserModel user);
  Future<bool> checkUserExists(String phoneNumber);
}
