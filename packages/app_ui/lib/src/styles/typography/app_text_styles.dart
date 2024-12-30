import 'package:app_ui/src/generated/fonts.gen.dart';
import 'package:app_ui/src/styles/colors/imdr_app_color_schemes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle h1 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w800,
    fontFamily: FontFamily.roboto,
    color: functionalGrayColorSchemes.gray800,
  );

  static TextStyle h2 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    fontFamily: FontFamily.roboto,
    color: functionalGrayColorSchemes.gray800,
  );

  static TextStyle h3 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w800,
    fontFamily: FontFamily.roboto,
    color: functionalGrayColorSchemes.gray800,
  );

  static TextStyle h4 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w800,
    fontFamily: FontFamily.roboto,
    color: functionalGrayColorSchemes.gray800,
  );

  static TextStyle bodyBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w800,
    fontFamily: FontFamily.roboto,
    color: functionalGrayColorSchemes.gray800,
  );

  static TextStyle body = TextStyle(
    fontSize: 13.sp,
    color: functionalGrayColorSchemes.gray800,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.roboto,
  );

  static TextStyle caption = TextStyle(
    fontSize: 11.sp,
    color: functionalGrayColorSchemes.gray800,
    fontFamily: FontFamily.roboto,
  );
}
