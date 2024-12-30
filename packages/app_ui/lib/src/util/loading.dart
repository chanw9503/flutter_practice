import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/styles/colors/imdr_app_color_schemes.dart';

import 'package:flutter/material.dart';

class AppLoading {
  static void init() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 1000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = brandPrimaryColorSchemes.normal
      ..backgroundColor = const Color(0xFFFDFDFD)
      ..indicatorColor = brandPrimaryColorSchemes.normal
      ..textColor = functionalGrayColorSchemes.gray700
      ..maskColor = brandPrimaryColorSchemes.normal.withOpacity(0.5)
      ..maskType = EasyLoadingMaskType.custom
      ..userInteractions = false
      ..dismissOnTap = false
      ..boxShadow = [
        BoxShadow(
          color: functionalGrayColorSchemes.gray500.withOpacity(0.1),
          blurRadius: 1,
          spreadRadius: 1,
          offset: const Offset(0, 0),
        ),
      ]
      ..errorWidget = Icon(
        Icons.error,
        color: functionalWarningColorSchemes.normal,
      );
  }

  static Future<void> show() async {
    EasyLoading.show();
  }

  static Future<void> showInfo(String info) {
    return EasyLoading.showInfo(info);
  }

  static void hide() {
    EasyLoading.dismiss();
  }
}
