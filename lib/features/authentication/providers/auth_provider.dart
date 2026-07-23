import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../domain/repositories/auth_repository.dart';
import '../repositories/auth_repository_impl.dart';
import 'auth_state.dart';
import '../data/models/user_model.dart';
import '../services/session_manager.dart';

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);
final googleSignInProvider = Provider<GoogleSignIn>((ref) => GoogleSignIn());

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    ref.watch(firebaseAuthProvider),
    ref.watch(googleSignInProvider),
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _repository;
  final SessionManager _sessionManager;

  AuthNotifier(this._repository, this._sessionManager)
      : super(const AuthState.initial()) {
    _init();
  }

  Future<void> _init() async {
    final token = await _sessionManager.getToken();
    if (token != null) {
      final user = await _repository.getCurrentUser();
      if (user != null) {
        state = AuthState.authenticated(user);
      } else {
        state = const AuthState.unauthenticated();
      }
    } else {
      state = const AuthState.unauthenticated();
    }

    _repository.authStateChanges.listen((user) async {
      if (user != null) {
        final userModel = await _repository.getCurrentUser();
        if (userModel != null) {
          final idToken = await user.getIdToken();
          if (idToken != null) await _sessionManager.saveToken(idToken);
          state = AuthState.authenticated(userModel);
        }
      } else {
        await _sessionManager.clearSession();
        state = const AuthState.unauthenticated();
      }
    });
  }

  Future<void> signInWithGoogle() async {
    state = const AuthState.loading();
    try {
      await _repository.signInWithGoogle();
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> verifyOTP(String verificationId, String smsCode) async {
    state = const AuthState.loading();
    try {
      await _repository.verifyOTP(verificationId, smsCode);
      final user = await _repository.getCurrentUser();
      if (user != null) {
        state = AuthState.authenticated(user);
      }
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signOut() async {
    state = const AuthState.loading();
    await _repository.signOut();
    await _sessionManager.clearSession();
  }

  Future<void> updateProfile({
    required String name,
    String? email,
    required String phoneNumber,
    Gender? gender,
    DateTime? dob,
  }) async {
    state.maybeWhen(
      authenticated: (user) async {
        final updatedUser = user.copyWith(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          gender: gender ?? user.gender,
          dateOfBirth: dob ?? user.dateOfBirth,
          isProfileCompleted: true,
        );

        state = const AuthState.loading();
        try {
          await _repository.updateProfile(updatedUser);
          state = AuthState.authenticated(updatedUser);
        } catch (e) {
          state = AuthState.error(e.toString());
        }
      },
      orElse: () {},
    );
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    ref.watch(authRepositoryProvider),
    ref.watch(sessionManagerProvider),
  );
});
