import 'package:flutter/material.dart';

class AppColors {
  static const Color appBorder = const Color(0xFFEDEEF3);
  static const Color appBorderLight = const Color(0xFFDFDFDF);
  static const Color appBorderDark = const Color(0xFF222222);

  static const Color sheetBtnBg = const Color(0xFFF7F7F7);

  static const Color appWhite = const Color(0xFFFFFFFF);

  static const Color appTextNormal = const Color(0xFF666666);
  static const Color appTextDark = const Color(0xFF333333);
  static const Color appTextLight = const Color(0xFF999999);

  static const Color appIncome = const Color(0xFF03C789);
  static const Color appOutlay = const Color(0xFFFF5252);
  static const Color appOutlayLight = const Color(0x9FFF5252);

  static const Color appYellow = const Color(0xFFF4B742);
  static const Color appYellowLight = const Color(0xFFFED279);
  static const Color appYellowShadow = const Color(0x77F4B742);
  static const MaterialColor appYellowMaterial = MaterialColor(
    0xFFF4B742,
    <int, Color>{50: appYellow, 100: appYellow, 200: appYellow, 300: appYellow, 400: appYellow, 500: appYellow, 600: appYellow, 700: appYellow, 800: appYellow, 900: appYellow},
  );

  static const Color appGreen = const Color(0xFF03C789);
  static const Color appGreenLight = const Color(0xFF47E48B);
  static const Color appGreenShadow = const Color(0x7703C789);
  static const MaterialColor appGreenMaterial = MaterialColor(
    0xFF03C789,
    <int, Color>{50: appGreen, 100: appGreen, 200: appGreen, 300: appGreen, 400: appGreen, 500: appGreen, 600: appGreen, 700: appGreen, 800: appGreen, 900: appGreen},
  );

  static const Color appBlackShadow = const Color(0x1E000000);

  static const Color appSufficient = const Color(0xFF30F697);
  static const Color appRegular = const Color(0xFFFED279);
  static const Color appWarning = const Color(0xFFfDA22C);
  static const Color appDanger = const Color(0x1FFFF401A);
}
