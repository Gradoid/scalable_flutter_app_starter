import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/extension/context_user.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watchCurrentUser;

    return Center(
      child: Text('User: ${user?.name ?? '...'}'),
    );
  }
}
