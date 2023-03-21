import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

enum ScreenSize {
  largeScreen,
  mediumScreen,
  smallPhone,
  largePhone,
  tablet,
  watch
}

enum OrientationFactor { portrait, landscape }

class DeviceConfig {
  static double largeScreen = 960.0;
  static double mediumScreen = 640.0;
  static double smallPhone = 300.0;
  static double phone = 640.0;
  static double largePhone = 640.0;
  static double tablet = 700.0;

  static setLargeScreen(double value)=> largeScreen = value;
  static setMediumScreen(double value)=> mediumScreen= value;
  static setSmallPhone(double value)=> smallPhone= value;
  static setPhone(double value)=> phone= value;
  static setLargePhone(double value)=> largePhone= value;
  static setTablet(double value)=> tablet= value;
}



class DeviceOS {
  static bool isIOS = Platform.isIOS;
  static bool isAndroid = Platform.isAndroid;
  static bool isMacOS = Platform.isMacOS;
  static bool isLinux = Platform.isLinux;
  static bool isWindows = Platform.isWindows;
  static bool isFuchsia = Platform.isFuchsia;

  static bool isWeb = kIsWeb;
  static bool get isDesktop => isWindows || isMacOS || isLinux;
  static bool get isMobile => isAndroid || isIOS;
  static bool get isDesktopOrWeb => isDesktop || isWeb;
  static bool get isMobileOrWeb => isMobile || isWeb;
}

/// DeviceScreen 
class DeviceScreen {
  /// small phone size
  static bool isSmallPhone(BuildContext context) => MediaQuery.of(context).size.shortestSide  <= DeviceConfig.smallPhone;
  /// reguler phone size
  static bool isPhone(BuildContext context) => MediaQuery.of(context).size.shortestSide  <= DeviceConfig.phone;
  /// large phone  size
  static bool isLargePhone(BuildContext context) =>  MediaQuery.of(context).size.shortestSide <= DeviceConfig.largePhone;
  /// medium screen size
  static bool isMediumScreen(BuildContext context) => MediaQuery.of(context).size.width > DeviceConfig.mediumScreen;
  // large screen size
  static bool isLargeScreen(BuildContext context) => MediaQuery.of(context).size.width > DeviceConfig.largeScreen;
}

class DeviceOrientation {
  static OrientationFactor get(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) return OrientationFactor.portrait;
    return OrientationFactor.landscape;
  }

  static bool isPortrait(BuildContext context) =>
      get(context) == OrientationFactor.portrait;
  static bool isLandscape(BuildContext context) =>
      get(context) == OrientationFactor.landscape;
}
