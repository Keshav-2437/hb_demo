import 'package:flutter/material.dart';

import 'screen_util.dart';

class AppStyles {
  static double textSizeLarge =
      ScreenUtil.responsiveSize(18, tabletSize: 22, desktopSize: 26);
  static double textSizeMedium =
      ScreenUtil.responsiveSize(16, tabletSize: 20, desktopSize: 24);
  static double textSizeSmall =
      ScreenUtil.responsiveSize(14, tabletSize: 18, desktopSize: 22);

  static TextStyle titleStyle = TextStyle(
    fontSize: textSizeLarge,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyStyle = TextStyle(
    fontSize: textSizeMedium,
  );
}
