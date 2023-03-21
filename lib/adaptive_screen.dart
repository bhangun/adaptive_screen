import 'package:flutter/material.dart';
import 'device_info.dart';

/// AdaptiveScreen is simple
/// just return widget which represent widget for certain screen size
/// [phone], [desktop], [mediumScreen] or [largerScreen]
/// based on common screen size
class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen(
      {Key? key,
      this.phone = const Material(child: Text('No Widget')),
      this.desktop,
      this.largeScreen,
      this.mediumScreen,
      this.landscape,
      this.portrait})
      : super(key: key);
  final Widget phone;
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? desktop;
  final Widget? landscape;
  final Widget? portrait;

  @override
  Widget build(BuildContext context) {
    bool isMobile = DeviceOS.isMobile;
    bool isLargeScreen = DeviceScreen.isLargeScreen(context);
    bool isMediumScreen = DeviceScreen.isMediumScreen(context);
    bool isPhone = DeviceScreen.isPhone(context);
    bool isLandscape = DeviceOrientation.isLandscape(context);
    bool isPortrait = DeviceOrientation.isPortrait(context);

    if (isPhone || isMobile) {
      return phone;
    } else if (isLargeScreen) {
      return largeScreen ?? noWidget();
    } else if (isMediumScreen) {
      return mediumScreen ?? noWidget();
    } else if (isPortrait) {
      return portrait ?? phone;
    } else if (isLandscape) {
      return landscape ?? noWidget();
    }

    return desktop ?? noWidget();
  }

  Widget noWidget() => const Material(child: Text('No Widget'));
}
