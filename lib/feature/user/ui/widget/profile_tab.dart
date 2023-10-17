import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/extension/context.dart';
import 'package:scalable_flutter_app_starter/core/extension/context_user.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watchCurrentUser;
    if (user == null) {
      return Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Sign In'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage: NetworkImage(user.imageUrl),
            ),
            const SizedBox(height: 16),
            Text(
              user.name,
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              user.email,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
