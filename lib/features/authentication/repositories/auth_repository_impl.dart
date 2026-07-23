import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../domain/repositories/auth_repository.dart';
import '../data/models/user_model.dart';
import '../../../core/error/failures.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthRepositoryImpl(this._firebaseAuth, this._googleSignIn);

  @override
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  @override
  Future<void> loginWithPhone(
    String phoneNumber, {
    required void Function(String verificationId, int? resendToken) codeSent,
    required void Function(FirebaseAuthException e) verificationFailed,
  }) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      throw AuthFailure(e.toString());
    }
  }

  @override
  Future<UserCredential> verifyOTP(
      String verificationId, String smsCode) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      return await _firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw AuthFailure(e.message ?? 'OTP verification failed');
    }
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw const AuthFailure('Google Sign-In cancelled');
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw AuthFailure(e.message ?? 'Google Sign-In failed');
    } catch (e) {
      throw AuthFailure(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      // In a real app, fetch these from Firestore
      // For now, we assume profile is complete if displayName is present
      return UserModel(
        id: user.uid,
        phoneNumber: user.phoneNumber ?? '',
        name: user.displayName,
        email: user.email,
        profilePicture: user.photoURL,
        isProfileCompleted:
            user.displayName != null && user.displayName!.isNotEmpty,
        joinedAt: user.metadata.creationTime,
      );
    }
    return null;
  }

  @override
  Future<void> updateProfile(UserModel userModel) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user != null) {
        await user.updateDisplayName(userModel.name);
        // In production, save other fields to Firestore
      }
    } on FirebaseAuthException catch (e) {
      throw AuthFailure(e.message ?? 'Failed to update profile');
    }
  }

  @override
  Future<bool> checkUserExists(String phoneNumber) async {
    // In a real app, check Firestore if a user with this phone exists.
    // For dummy purposes, let's say anyone with a name is an existing user.
    final user = _firebaseAuth.currentUser;
    if (user != null &&
        user.displayName != null &&
        user.displayName!.isNotEmpty) {
      return true;
    }
    return false;
  }
}
