import 'package:scalable_flutter_app_starter/feature/user/model/user.dart';
import 'package:scalable_flutter_app_starter/feature/user/provider/user_mock_provider.dart';

class UserRepository {
  final _userProvider = UserMockProvider();

  Stream<User?> getUserStream() {
    _userProvider.triggerLoggedIn();
    return _userProvider.getUserStream();
  }

  void logOut() {
    _userProvider.triggerLoggedOut();
  }
}
