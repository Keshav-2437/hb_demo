import 'package:flutter/material.dart';

class ResponsiveLayout {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1200;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  static double getFontSize(
      BuildContext context, double mobileSize, double desktopSize) {
    return isDesktop(context) ? desktopSize : mobileSize;
  }

  static EdgeInsets getPadding(BuildContext context, EdgeInsets mobilePadding,
      EdgeInsets desktopPadding) {
    return isDesktop(context) ? desktopPadding : mobilePadding;
  }
}
