<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

AdaptiveScreen is simple just return widget which represent widget for certain screen size [phone], [desktop], [mediumScreen] or [largerScreen] based on common screen size.

## Screen Size

  static double largeScreen = 960.0;
  static double mediumScreen = 640.0;
  static double smallPhone = 300.0;
  static double phone = 640.0;
  static double largePhone = 640.0;
  static double tablet = 700.0;

## Usage
```
class MyExample extends StatelessWidget {
  const MyExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AdaptiveScreen(
      phone: Text('will show when screen on phone size'),
      largeScreen: Text('will show when screen on large screen size'),
      mediumScreen: Text('will show when screen on medium screen size'),
    );
  }
}
```
