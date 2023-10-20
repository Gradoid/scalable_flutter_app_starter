import 'package:url_launcher/url_launcher.dart';

class Urls {
  Urls._();

  static const _termsOfService = 'https://applaunchprogram.com/';
  static const _privacyPolicy = 'https://applaunchprogram.com/';
  static const _buyPro =
      'https://gradoid.lemonsqueezy.com/checkout/buy/b8fff0c2-d8ce-4af2-ac33-b675ef858c5c?checkout%5Bdiscount_code%5D=APP200';

  static void showTermsOfService() => _show(_termsOfService);

  static void showPrivacyPolicy() => _show(_privacyPolicy);

  static void showBuyPro() => _show(_buyPro);

  static void _show(String url) {
    launchUrl(Uri.parse(url));
  }
}
