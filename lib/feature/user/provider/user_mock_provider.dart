import 'package:scalable_flutter_app_starter/feature/user/model/user.dart';

class UserMockProvider {
  Stream<User?> getUserStream({required bool isLoggedIn}) async* {
    // Simulate network delay
    await Future<void>.delayed(const Duration(seconds: 2));

    if (!isLoggedIn) {
      yield null;
      return;
    }

    yield User(
      id: 'john-doe',
      name: 'John Doe',
      email: 'john@test.com',
      imageUrl:
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=200&q=80',
      createdAt: DateTime.now(),
    );
  }
}
