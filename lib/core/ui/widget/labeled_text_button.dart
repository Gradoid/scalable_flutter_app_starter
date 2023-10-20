import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/extension/context.dart';

class LabeledTextButton extends StatelessWidget {
  const LabeledTextButton({
    required this.label,
    required this.action,
    required this.onTap,
    super.key,
  });

  final String label;
  final String action;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: '$label ',
          style: context.textTheme.labelMedium,
          children: [
            TextSpan(
              text: action,
              style: context.textTheme.labelMedium!.copyWith(
                color: context.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
