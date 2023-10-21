# Scalable Flutter App - Starter

👋 Hey, welcome to Scalable Flutter App.

Watch/star this repo to be notified when updates are pushed.

To get started, click on the green "Use this template" button on the top-right.

## About Me

I'm Milos Jokic and I:

- built my first mobile app in 2007
- grew my apps to 214k users and $106,140 revenue.
- built apps for 10 Toptal clients.

And now I run a 6-figure devs agency where we launch MVPs in 4 weeks using Flutter & Firebase.

You can find me on:

- [LinkedIn](https://www.linkedin.com/in/milos-jokic/)
- [Twitter](https://twitter.com/miloshjokic)
- [Newsletter](http://flutterpreneur.com/)

## Starter Features

- [X] Platforms: Android, iOS, web
- [X] Scalable Architecture using [flutter_bloc](https://bloclibrary.dev/)
- [X] Navigation using [go_router](https://pub.dev/packages/go_router)
- [X] Scalable App Styling
- [X] GitHub Actions - code and formatting check
- [X] Responsive Design
- [X] UserMockProvider
- [X] Profile Page
- [X] Settings Page: sign out, app version...
- [X] Legal: Terms, Policy, Data Deletion
- [X] Google Fonts
- [X] Sign in and Sign Up Pages
- [X] Input Validators
- [X] Cached network image

## Pro - $200 off presale (first 10 customers)

Want more features? Check out the pro version.

Get your $200 off presale here (limited to first 10 customers, use `APP200` discount code): [$200 OFF](https://gradoid.lemonsqueezy.com/checkout/buy/b8fff0c2-d8ce-4af2-ac33-b675ef858c5c?checkout%5Bdiscount_code%5D=APP200)

Scalable Flutter App - Pro launches in November.

## Pro - Features

- [X] Email Support
- [X] Lifetime updates
- [ ] Firebase Project Integration
- [ ] Firebase Authentication
- [ ] Firebase Remote Config
- [ ] Firebase Crashlytics
- [ ] Firebase Firestore
- [ ] Firebase Analytics
- [ ] Firebase Storage
- [ ] Google Sign In
- [ ] Apple Sign In
- [ ] Email Link Sign In
- [ ] Common Cubits
- [ ] In App Purchases (RevenueCat)
- [ ] App Store Review Request
- [ ] Notifications (Firebase)
- [ ] HTTP Requests
- [ ] Local Storage
- [ ] Permissions
- [ ] Environments
- [ ] Localization
- [ ] Dark Mode
- [ ] Connectivity check
- [ ] Hive - local database
- [ ] MixPanel - analytics
- [ ] Android - Release Signing
- [ ] Onboarding
- [ ] Forgot Password
- [ ] 🎉 BONUS: Scalable Firebase Backend Project Template: Cloud Functions & Firestore Security Rules

...and much more!

## Docs

### Code Architecture

The code architecture is based on [flutter_bloc architecture proposal](https://bloclibrary.dev/#/architecture).

There are 4 layers:

1. UI (Flutter Widgets)
2. BLoC (stateful business logic)
3. Repository (high-level API)
4. Provider (low-level implementation)

And there's only 1 communication rule that we must follow:

_**The layer can only call the one layer below it.**_

That means that:

- UI can only call BLoC
- BLoC can only call Repository
- Repository can only call Provider
- Provider can only call external services (Firebase, HTTP, etc.)

And we avoid same-layer communication (as it creates interdependencies):

- `UserRepository` calling `AuthRepository` is _**not**_ allowed.
- `UserCubit` calling `UserRepository` and `AuthRepository` is allowed.

### Google Fonts

To change the font:

1. Go to [Google Fonts](https://fonts.google.com/) and select a font.
2. Download the font files.
3. Add the font files to `assets/fonts` (remove the old ones).
4. Update `style.dart` with the new font (i.e. `return GoogleFonts.rubikTextTheme(textTheme)`).

### Useful GitHub Pull Request Settings

I've found that turning on these 2 settings in GitHub repo settings helps a lot:

1. `Always suggest updating pull request branches`
2. `Automatically delete head branches`

## FAQ

### Why flutter_bloc and not X?

While GetX, Provider, Riverpod, MobX, Redux, etc. are all great solutions,
most of them are too forgiving. They allow us to access and change state globally.

Whereas [flutter_bloc](https://bloclibrary.dev/) forces us to have `BuildContext`
in order to access and change the state. The stricter the rules, the harder it is to make mistakes.

And flutter_bloc has a great [architecture proposal](https://bloclibrary.dev/#/architecture) that scales well.

## Resources

Build your app icon in minutes (free): [Icon Kitchen](https://icon.kitchen/)

CI/CD for mobile apps (free & paid): [Codemagic](https://codemagic.io/)

Want me to launch your MVP in 4 weeks (premium)? [Go to App Launch Program](https://applaunchprogram.com/)

## Feedback

Found an issue or want to request a feature? Open an [issue](https://github.com/Gradoid/scalable_flutter_app_starter/issues)

Have a question? Ask me on [LinkedIn](https://www.linkedin.com/in/milos-jokic/) or [Twitter](https://twitter.com/miloshjokic).
