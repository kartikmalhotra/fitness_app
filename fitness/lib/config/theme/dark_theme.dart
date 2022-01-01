import 'package:flutter/material.dart';

abstract class DarkAppColors {
  static const primary = Color(0xff000000);
  static const secondary = Color(0xff359B4C);
  static const danger = Color(0xfff9304d);
  static const stable = Color(0xff26283c);
  static const light = Color(0xfff6f6f6);
  static const inactiveActionColor = Color(0xff60616e);
  static const borderColor = Color(0xff393a4c);
  static const tableBorderColor = Color(0xffffffff);
  static const greenColor = Color(0xff41ad49);
  static const redColor = Color(0xffd50000);
  static const yellowColor = Color(0xffffff00);
  static const darkYellowColor = Color(0xffd4c72d);
  static const greyColor = Color(0xff9e9e9e);
  static const blackColor = Color(0xff000000);
  static const cardTitleBackgroundColor = Color(0xfff5f5f5);
  static const chartBackgroundColor = Color(0xfff8f8f8);
  static const chartHeadingColor = Color(0xff752262);
  static const chartHeadingBackgroundColor = Color(0xff393a4c);
  static const orangeColor = Color(0xfff07238);
  static const lightOrangeColor = Color(0xfff28e5f);
  static const sliderColor = Color(0xffffffff);

  static const appBarGradientColor1 = Color(0xff1c1e30);
  static const appBarGradientColor2 = Color(0xff1c1e30);

  static const primaryGradientColor1 = Color(0xffffffff);
  static const primaryGradientColor2 = Color(0xffffffff);

  static const secondaryGradientColor1 = Color(0xff393a4c);
  static const secondaryGradientColor2 = Color(0xff464654);

  static const cardBackground = Color(0xff323333);
  static const bannerColorLight = Color(0xff4b4a69);
  static const bannerColorDark = Color(0xff353853);
  static const warningBackground = Color(0xff393a4c);
  static const errorBackground = Color(0xffffdddd);

  static const primaryButtonTextColor = Color(0xff1c1e30);
  static const primaryTextColor = Color(0xffffffff);

  static const bottomTabsBackground = Color(0xff1c1e30);
  static const bottomBarButtons = Color(0xff1c1e30);

  static const bottomSheetDragIndicator = Color(0xffffffff);
  static const bottomSheetBackground = Color(0xff393a4c);
  static const bottomSheetItemDivider = Color(0xff4b4a69);

  static const icfrBackGroundRed = Color(0xffffdddd);
  static const icfrBackGroundYellow = Color(0xfff9fdd4);
  static const icfrBackGroundGreen = Color(0xffe0ffe6);

  static const textGreyTitle = Color(0xffffffff);
  static const textGreySubTitle = Color(0xffffffff);
  static const menuItemColor = Color(0xffffffff);
  static const popUpMenuColor = Color(0xff4b4a69);

  static const switchThumbColor = Color(0xffffffff);
  static const switchTrackActiveColor = Color(0xfff5f5f5);
  static const switchTrackInActiveColor = Color(0xff60616e);

  static const lightRedColor = Color(0xfff5b1b0);
  static const lightGreenColor = Color(0xff90dc9e);
  static const lightYellowColor = Color(0xffe5de31);
  static const lightGreyColor = Color(0xffc9c9ce);
  static const lightBlackColor = Color(0xff3a3a3a);

  static const dullRedColor = Color(0xfffad7d7);
  static const dullGreenColor = Color(0xffc7edce);
  static const dullYellowColor = Color(0xfff2ee98);
  static const dullGreyColor = Color(0xffe4e4e6);
  static const dullBlackColor = Color(0xff616161);

  static const highRedColor = Color(0xfff15a28);

  static const infoSectionColor = Color(0xff1b1e30);

  static const widgetBorderRedColor = Color(0xfffd2a2a);
  static const widgetBorderBlueColor = Color(0xff00c4ff);
  static const widgetBorderGreenColor = Color(0xff4bc35f);
  static const widgetBackgroundRedColor = Color(0xffffdfe0);
  static const widgetBackgroundBlueColor = Color(0xffe2f8ff);
  static const widgetBackgroundGreenColor = Color(0xffdef9e5);

  static const textSelectionColor = Color(0xff1aa0c1);
}

final darkThemeData = {
  'themeData': ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Roboto',
    primaryColor: DarkAppColors.primary,
    scaffoldBackgroundColor: DarkAppColors.primary,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: DarkAppColors.primary,
      selectionColor: DarkAppColors.textSelectionColor,
      selectionHandleColor: DarkAppColors.textSelectionColor,
    ),
    toggleableActiveColor: DarkAppColors.primary,
    cardColor: DarkAppColors.cardBackground,
    cardTheme: const CardTheme(
      color: DarkAppColors.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: DarkAppColors.primary,
      ),
      toolbarTextStyle: TextStyle(
        fontFamily: "Roboto",
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      titleTextStyle: TextStyle(
        fontFamily: "Roboto",
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: DarkAppColors.cardBackground,
      modalBackgroundColor: DarkAppColors.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 112,
        fontWeight: FontWeight.w200,
        color: DarkAppColors.primaryTextColor,
      ),
      headline2: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 56,
        fontWeight: FontWeight.w400,
        color: DarkAppColors.primaryTextColor,
      ),
      headline3: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 40,
        fontWeight: FontWeight.w500,
        color: DarkAppColors.primaryTextColor,
      ),
      headline4: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 34,
        fontWeight: FontWeight.w500,
        color: DarkAppColors.primaryTextColor,
      ),
      headline5: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: DarkAppColors.primaryTextColor,
      ),
      headline6: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: DarkAppColors.primaryTextColor,
      ),
      subtitle1: TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: DarkAppColors.primaryTextColor.withOpacity(0.7),
      ),
      subtitle2: TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: DarkAppColors.primaryTextColor.withOpacity(0.7),
      ),
      bodyText1: TextStyle(
        fontFamily: "Roboto",
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: DarkAppColors.primaryTextColor.withOpacity(0.7),
      ),
      bodyText2: TextStyle(
        fontFamily: "Roboto",
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: DarkAppColors.primaryTextColor.withOpacity(0.7),
      ),
      button: TextStyle(
        fontFamily: "Roboto",
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: DarkAppColors.primaryTextColor.withOpacity(0.7),
      ),
      caption: TextStyle(
        fontFamily: "Roboto",
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: DarkAppColors.primaryTextColor.withOpacity(0.5),
      ),
      overline: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: DarkAppColors.primary,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: DarkAppColors.bottomBarButtons,
      foregroundColor: DarkAppColors.bottomBarButtons,
    ),
    iconTheme: const IconThemeData(
      color: DarkAppColors.light,
    ),
    primaryIconTheme: const IconThemeData(
      color: DarkAppColors.light,
    ),
    dividerTheme: DividerThemeData(
      color: DarkAppColors.primaryTextColor.withOpacity(0.5),
    ),
    sliderTheme: SliderThemeData(
      overlayColor: DarkAppColors.primary.withOpacity(0.2),
      valueIndicatorColor: DarkAppColors.primary,
      thumbColor: DarkAppColors.primary,
      activeTickMarkColor: DarkAppColors.primary,
      inactiveTickMarkColor: DarkAppColors.stable,
      activeTrackColor: DarkAppColors.primary,
      inactiveTrackColor: DarkAppColors.stable,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
      valueIndicatorTextStyle: const TextStyle(color: DarkAppColors.stable),
    ),
    scrollbarTheme: ScrollbarThemeData(
      isAlwaysShown: false,
      thumbColor: MaterialStateProperty.all(DarkAppColors.sliderColor),
      thickness: MaterialStateProperty.all(6.0),
      radius: const Radius.circular(6.0),
      minThumbLength: 80.0,
    ),
    bannerTheme: const MaterialBannerThemeData(
      backgroundColor: DarkAppColors.cardBackground,
    ),
  ),
  'primary': DarkAppColors.primary,
  'secondaryColor': DarkAppColors.secondary,
  'stableColor': DarkAppColors.stable,
  'errorColor': DarkAppColors.danger,
  'lightColor': DarkAppColors.light,
  'listItemHeaderColor': DarkAppColors.appBarGradientColor1,
  'inactiveActionColor': DarkAppColors.inactiveActionColor,
  'borderColor': DarkAppColors.borderColor,
  'redColor': DarkAppColors.redColor,
  'greenColor': DarkAppColors.greenColor,
  'yellowColor': DarkAppColors.yellowColor,
  'darkYellowColor': DarkAppColors.darkYellowColor,
  'greyColor': DarkAppColors.greyColor,
  'blackColor': DarkAppColors.blackColor,
  'tableBorderColor': DarkAppColors.tableBorderColor,
  'cardTitleBackgroundColor': DarkAppColors.cardTitleBackgroundColor,
  'cardBackground': DarkAppColors.cardBackground,
  'chartBackgroundColor': DarkAppColors.chartBackgroundColor,
  'chartHeadingColor': DarkAppColors.chartHeadingColor,
  'chartHeadingBackgroundColor': DarkAppColors.chartHeadingBackgroundColor,
  'orangeColor': DarkAppColors.orangeColor,
  'lightOrangeColor': DarkAppColors.lightOrangeColor,
  'bannerColor': DarkAppColors.bannerColorLight,
  'bannerColorAction': DarkAppColors.bannerColorDark,
  'warningBackground': DarkAppColors.warningBackground,
  'errorBackground': DarkAppColors.errorBackground,
  'primaryButtonTextColor': DarkAppColors.primaryButtonTextColor,
  'primaryTextColor': DarkAppColors.primaryTextColor,
  'inputBoxBorderColor': DarkAppColors.primaryTextColor.withOpacity(0.5),
  'placeHolderTextColor': DarkAppColors.primaryTextColor.withOpacity(0.4),
  'bottomTabsBackground': DarkAppColors.bottomTabsBackground,
  'bottomBarButtons': DarkAppColors.bottomBarButtons,
  'bottomSheetDragIndicator': DarkAppColors.bottomSheetDragIndicator,
  'bottomSheetBackground': DarkAppColors.bottomSheetBackground,
  'bottomSheetItemDivider': DarkAppColors.bottomSheetItemDivider,
  'textGreyTitle': DarkAppColors.textGreyTitle,
  'textGreySubTitle': DarkAppColors.textGreySubTitle,
  'menuItemColor': DarkAppColors.menuItemColor,
  'popUpMenuColor': DarkAppColors.popUpMenuColor,
  'switchThumbColor': DarkAppColors.switchThumbColor,
  'switchTrackActiveColor': DarkAppColors.switchTrackActiveColor,
  'switchTrackInActiveColor': DarkAppColors.switchTrackInActiveColor,
  'darkPrimary': DarkAppColors.appBarGradientColor1,
  'detailScreenScafold': DarkAppColors.stable,
  'icfrBackGroundRed': DarkAppColors.icfrBackGroundRed,
  'icfrBackGroundYellow': DarkAppColors.icfrBackGroundYellow,
  'icfrBackGroundGreen': DarkAppColors.icfrBackGroundGreen,
  'lightRedColor': DarkAppColors.lightRedColor,
  'lightGreenColor': DarkAppColors.lightGreenColor,
  'lightYellowColor': DarkAppColors.lightYellowColor,
  'lightGreyColor': DarkAppColors.lightGreyColor,
  'lightBlackColor': DarkAppColors.lightBlackColor,
  'dullRedColor': DarkAppColors.dullRedColor,
  'dullGreenColor': DarkAppColors.dullGreenColor,
  'dullYellowColor': DarkAppColors.dullYellowColor,
  'dullGreyColor': DarkAppColors.dullGreyColor,
  'dullBlackColor': DarkAppColors.dullBlackColor,
  'highRedColor': DarkAppColors.highRedColor,
  'infoSectionColor': DarkAppColors.infoSectionColor,
  'widgetBorderRedColor': DarkAppColors.widgetBorderRedColor,
  'widgetBorderBlueColor': DarkAppColors.widgetBorderBlueColor,
  'widgetBorderGreenColor': DarkAppColors.widgetBorderGreenColor,
  'widgetBackgroundRedColor': DarkAppColors.widgetBackgroundRedColor,
  'widgetBackgroundBlueColor': DarkAppColors.widgetBackgroundBlueColor,
  'widgetBackgroundGreenColor': DarkAppColors.widgetBackgroundGreenColor,
  'appBarGradient': const [
    DarkAppColors.appBarGradientColor1,
    DarkAppColors.appBarGradientColor2
  ],
  'primaryGradientThemeColors': const [
    DarkAppColors.primaryGradientColor1,
    DarkAppColors.primaryGradientColor2
  ],
  'secondaryGradientThemeColors': const [
    DarkAppColors.secondaryGradientColor1,
    DarkAppColors.secondaryGradientColor2
  ]
};
