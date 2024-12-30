import 'package:flutter/material.dart';

abstract class CustomColorSchemes {
  Color get normal;
  Color get hover;
  Color get active;
  Color get disabled;
}

abstract class BrandColorSchemes extends CustomColorSchemes {
  Color get subtle;
  Color get strong;
}

abstract class GrayColorSchemes {
  Color get gray900;
  Color get gray800;
  Color get gray750;
  Color get gray700;
  Color get gray600;
  Color get gray500;
  Color get gray400;
  Color get gray300;
  Color get gray200;
  Color get gray50;
}
