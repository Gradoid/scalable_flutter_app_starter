import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:scalable_flutter_app_starter/core/ui/widget/labeled_text_button.dart';
import 'package:scalable_flutter_app_starter/core/util/urls.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        }

        final data = snapshot.data!;

        return Column(
          children: [
            Text(
              data.appName,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 2),
            Text(
              'v${data.version} (${data.buildNumber})',
              style: theme.textTheme.bodySmall,
            ),
            const LabeledTextButton(
              label: 'Get the PRO version',
              action: r'$200 OFF',
              onTap: Urls.showBuyPro,
            ),
          ],
        );
      },
    );
  }
}
