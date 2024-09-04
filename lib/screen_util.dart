import 'package:flutter/widgets.dart';

class ScreenUtil {
  static late double screenWidth;
  static late double screenHeight;
  static late bool isMobile;
  static late bool isTablet;
  static late bool isDesktop;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    isMobile = screenWidth < 600;
    isTablet = screenWidth >= 600 && screenWidth < 1200;
    isDesktop = screenWidth >= 1200;
  }

  static double responsiveSize(double mobileSize,
      {double? tabletSize, double? desktopSize}) {
    if (isDesktop && desktopSize != null) {
      return desktopSize;
    } else if (isTablet && tabletSize != null) {
      return tabletSize;
    }
    return mobileSize;
  }
}
