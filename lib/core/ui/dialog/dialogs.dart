import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scalable_flutter_app_starter/core/app/navigation/route.dart';
import 'package:scalable_flutter_app_starter/core/ui/dialog/confirmation_dialog.dart';
import 'package:scalable_flutter_app_starter/feature/user/bloc/user_cubit.dart';

sealed class Dialogs {
  const Dialogs._();

  static Future<void> showLogOutConfirmationDialog(
    BuildContext context,
  ) async {
    final confirmed = await _showConfirmationDialog(
      context,
      title: 'Sign Out',
      message: 'Are you sure you want to sign out?',
      confirmText: 'Sign Out',
      isDestructive: true,
    );

    if (confirmed && context.mounted) {
      context.read<UserCubit>().logOut();
      AppRoute.home.go(context);
    }
  }

  static Future<bool> _showConfirmationDialog(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmText,
    bool isDestructive = false,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => ConfirmationDialog(
            title: title,
            message: message,
            confirmText: confirmText,
            isDestructive: isDestructive,
          ),
        ) ??
        false;
  }
}
