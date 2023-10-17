import 'package:url_launcher/url_launcher.dart';

class Urls {
  Urls._();

  static const _termsOfService = 'https://applaunchprogram.com/';
  static const _privacyPolicy = 'https://applaunchprogram.com/';

  static void showTermsOfService() => _show(_termsOfService);

  static void showPrivacyPolicy() => _show(_privacyPolicy);

  static void _show(String url) {
    launchUrl(Uri.parse(url));
  }
}
