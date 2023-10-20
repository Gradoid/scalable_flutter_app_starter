import 'package:scalable_flutter_app_starter/feature/user/model/user.dart';
import 'package:scalable_flutter_app_starter/feature/user/provider/user_mock_provider.dart';

class AuthRepository {
  const AuthRepository({
    required this.userProvider,
  });

  final UserMockProvider userProvider;

  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return userProvider.triggerLoggedIn();
  }

  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return userProvider.triggerLoggedIn();
  }
}
