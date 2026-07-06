import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../domain/repositories/auth_repository.dart';
import '../repositories/auth_repository_impl.dart';
import 'auth_state.dart';
import '../services/session_manager.dart';
import '../../../core/utils/logger.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);
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

  AuthNotifier(this._repository, this._sessionManager) : super(const AuthState.initial()) {
    _init();
  }

  void _init() {
    _repository.authStateChanges.listen((user) async {
      if (user != null) {
        final userModel = await _repository.getCurrentUser();
        if (userModel != null) {
          // Check session / restore session logic here
          final token = await user.getIdToken();
          if (token != null) await _sessionManager.saveToken(token);
          
          state = AuthState.authenticated(userModel);
        } else {
          state = const AuthState.unauthenticated();
        }
      } else {
        await _sessionManager.clearSession();
        state = const AuthState.unauthenticated();
      }
    });
  }

  Future<void> signInWithEmail(String email, String password) async {
    state = const AuthState.loading();
    try {
      await _repository.signInWithEmailPassword(email, password);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signUpWithEmail(String email, String password, String name) async {
    state = const AuthState.loading();
    try {
      await _repository.signUpWithEmailPassword(email, password);
      await _repository.updateDisplayName(name);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    state = const AuthState.loading();
    try {
      await _repository.signInWithGoogle();
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      await _repository.sendPasswordResetEmail(email);
    } catch (e) {
      AppLogger.e('Password reset error', e);
    }
  }

  Future<void> signOut() async {
    state = const AuthState.loading();
    await _repository.signOut();
    await _sessionManager.clearSession();
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    ref.watch(authRepositoryProvider),
    ref.watch(sessionManagerProvider),
  );
});
