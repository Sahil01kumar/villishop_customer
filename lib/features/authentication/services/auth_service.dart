import '../../../core/network/api_client.dart';
import '../data/models/user_model.dart';

class AuthService {
  // ignore: unused_field
  final ApiClient _apiClient;

  AuthService(this._apiClient);

  Future<UserModel> syncUserWithBackend(UserModel user) async {
    // This would be an API call to PostgreSQL backend to sync Firebase user
    // For now, return the same user
    return user;
  }
}
