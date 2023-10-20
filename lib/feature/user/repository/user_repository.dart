import 'package:scalable_flutter_app_starter/feature/user/model/user.dart';
import 'package:scalable_flutter_app_starter/feature/user/provider/user_mock_provider.dart';

class UserRepository {
  const UserRepository({
    required this.userProvider,
  });

  final UserMockProvider userProvider;

  Stream<User?> getUserStream() {
    return userProvider.getUserStream();
  }

  void logOut() {
    userProvider.triggerLoggedOut();
  }
}
