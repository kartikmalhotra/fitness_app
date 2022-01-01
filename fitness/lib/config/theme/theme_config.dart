

import 'dart:io' show Platform;
import 'package:fitness/config/screen_config.dart';
import 'package:fitness/config/theme/dark_theme.dart';
import 'package:fitness/config/theme/light_theme.dart';
import 'package:flutter/material.dart';

enum AppTheme { light, dark, system }
enum Device { mobile, tablet, iPhone, iPad }

final appThemeData = {
  AppTheme.light: lightThemeData,
  AppTheme.dark: darkThemeData,
  AppTheme.system: null,
};

abstract class SetAppScreenConfiguration {
  static late BuildContext context;

  static void init(BuildContext ctx) {
    context = ctx;
    AppDevice.init(AppScreenConfig.screenWidth!);
  }
}

abstract class AppDevice {
  static Device? type;

  static void init(double deviceWidth) {
    if (deviceWidth > 600 && Platform.isAndroid) {
      type = Device.tablet;
    } else if (deviceWidth > 600) {
      type = Device.iPad;
    } else if (Platform.isAndroid) {
      type = Device.mobile;
    } else {
      type = Device.iPhone;
    }
  }
}

abstract class AppSpacing {
  static const xsss = 2.0;
  static const xss = 4.0;
  static const xs = 8.0;
  static const ms = 10.0;
  static const s = 12.0;
  static const m = 16.0;
  static const l = 20.0;
  static const xl = 24.0;
  static const xxl = 28.0;
  static const xxxl = 32.0;
  static const xxxxl = 36.0;

  static const cardHeight = 150.0;
  static const miniCardWidth = 200.0;
  static const borderRadius = 6.0;
  static const iconSize = 24.0;
  static const photoSize = 36.0;
  static const dashboardModuleIconSize = 30.0;
  static const listItemHeight = 64.0;
  static const walkThroughAppBarHeight = 85.0;
  static const topAppBarHeight = 50.0;
  static const bottomNavBarHeight = 60.0;
  static const bannerCardHeight = 50.0;
  static const legendsIconSizeBig = 30.0;
  static const legendsIconSizeSmall = 24.0;
  static const legendsIconSizeExtraSmall = 16.0;
}

abstract class AppAnimationDuration {
  static const xxxxshort = 10;
  static const xxxshort = 100;
  static const xxshort = 200;
  static const xshort = 500;
  static const short = 800;
  static const medium = 1000;
  static const xmedium = 1300;
  static const long = 1500;
  static const xlong = 2000;
}
