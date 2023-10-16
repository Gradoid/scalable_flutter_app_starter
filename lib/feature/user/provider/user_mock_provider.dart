import 'package:scalable_flutter_app_starter/feature/user/model/user.dart';

class UserMockProvider {
  Stream<User?> getUserStream({required bool isLoggedIn}) async* {
    // Simulate network delay
    await Future<void>.delayed(const Duration(seconds: 2));

    if (!isLoggedIn) {
      yield null;
    }

    yield User(
      id: 'john-doe',
      name: 'John Doe',
      email: 'john@test.com',
      imageUrl: '',
      createdAt: DateTime.now(),
    );
  }
}
