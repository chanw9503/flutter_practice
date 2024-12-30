import 'package:app_ui/src/styles/typography/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../colors/imdr_app_color_schemes.dart';

extension AppThemeExtension on BuildContext {
  // TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;
  // TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;
  // TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;
  // TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
  // TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  // TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;
  // TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  // TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  // TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  // TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  // TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  // TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;
  // TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
  // TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;
  // TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;

  TextStyle? get h1 => TextStyles.h1.copyWith(
        fontSize: Theme.of(this).textTheme.displaySmall?.fontSize,
      );
  TextStyle? get h2 => TextStyles.h2.copyWith(
        fontSize: Theme.of(this).textTheme.headlineSmall?.fontSize,
      );
  TextStyle? get h3 => TextStyles.h3.copyWith(
        fontSize: Theme.of(this).textTheme.titleMedium?.fontSize,
      );
  TextStyle? get h4 => TextStyles.h4.copyWith(
        fontSize: Theme.of(this).textTheme.titleSmall?.fontSize,
      );
  TextStyle? get bodyBold => TextStyles.bodyBold.copyWith(
        fontSize: Theme.of(this).textTheme.bodyMedium?.fontSize,
      );
  TextStyle? get body => TextStyles.body.copyWith(
        fontSize: Theme.of(this).textTheme.bodyMedium?.fontSize,
      );
  TextStyle get caption => TextStyles.caption.copyWith(
        fontSize: Theme.of(this).textTheme.labelMedium?.fontSize,
      );
}

extension ColorThemeSchemeExtension on BuildContext? {
  Color get brandNormal => brandPrimaryColorSchemes.normal;
  Color get brandHover => brandPrimaryColorSchemes.hover;
  Color get brandActive => brandPrimaryColorSchemes.active;
  Color get brandDisabled => brandPrimaryColorSchemes.disabled;

  Color get successNormal => functionalSuccessColorSchemes.normal;
  Color get successHover => functionalSuccessColorSchemes.hover;
  Color get successActive => functionalSuccessColorSchemes.active;
  Color get successDisabled => functionalSuccessColorSchemes.disabled;

  Color get warningNormal => functionalWarningColorSchemes.normal;
  Color get warningHover => functionalWarningColorSchemes.hover;
  Color get warningActive => functionalWarningColorSchemes.active;
  Color get warningDisabled => functionalWarningColorSchemes.disabled;

  Color get informationNormal => functionalInformationColorSchemes.normal;
  Color get informationHover => functionalInformationColorSchemes.hover;
  Color get informationActive => functionalInformationColorSchemes.active;
  Color get informationDisabled => functionalInformationColorSchemes.disabled;

  Color get dangerNormal => functionalDangerColorSchemes.normal;
  Color get dangerHover => functionalDangerColorSchemes.hover;
  Color get dangerActive => functionalDangerColorSchemes.active;
  Color get dangerDisabled => functionalDangerColorSchemes.disabled;

  Color get gray900 => functionalGrayColorSchemes.gray900;
  Color get gray800 => functionalGrayColorSchemes.gray800;
  Color get gray700 => functionalGrayColorSchemes.gray700;
  Color get gray750 => functionalGrayColorSchemes.gray750;
  Color get gray600 => functionalGrayColorSchemes.gray600;
  Color get gray500 => functionalGrayColorSchemes.gray500;
  Color get gray400 => functionalGrayColorSchemes.gray400;
  Color get gray300 => functionalGrayColorSchemes.gray300;
  Color get gray200 => functionalGrayColorSchemes.gray200;
  Color get gray50 => functionalGrayColorSchemes.gray50;

  Color get white => Colors.white;
  Color get whiteLow => const Color(0xFFFDFDFD);
  Color get whiteHighest => const Color(0xFFFAFAFA);

  Color get outline => gray300;
}
