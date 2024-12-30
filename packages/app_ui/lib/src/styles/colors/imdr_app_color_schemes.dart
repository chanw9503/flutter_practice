import 'package:flutter/material.dart';

import 'custom_color_schemes.dart';

class BrandPrimaryColorSchemes implements BrandColorSchemes {
  @override
  Color get normal => const Color(0xFF2FACA8); // 기본 상태 (normal)

  @override
  Color get hover => const Color(0xFF4FC5C1); // normal보다 약간 밝은 색상

  @override
  Color get active => const Color(0xFF238E8B); // normal보다 약간 어두운 색상

  @override
  Color get disabled => const Color(0xAA2FACA8); // 투명도를 추가하여 disabled 상태 표현

  @override
  Color get subtle => const Color(0xFF9EE5E3); // 매우 밝은 보조 색상

  @override
  Color get strong => const Color(0xFF1C6D6A); // 매우 어두운 강조 색상
}

class FunctionalSuccessColorSchemes implements CustomColorSchemes {
  @override
  Color get normal => const Color(0xFF4CAF50); // 기본 상태 (normal)

  @override
  Color get hover => const Color(0xFF66BB6A); // normal보다 약간 밝은 색상

  @override
  Color get active => const Color(0xFF388E3C); // normal보다 약간 어두운 색상

  @override
  Color get disabled => const Color(0xAA4CAF50); // 투명도를 추가하여 disabled 상태 표현
}

class FunctionalInformationColorSchemes implements CustomColorSchemes {
  @override
  Color get normal => const Color(0xFF2196F3); // 기본 상태 (normal)

  @override
  Color get hover => const Color(0xFF4FC3F7); // normal보다 약간 밝은 색상

  @override
  Color get active => const Color(0xFF1976D2); // normal보다 약간 어두운 색상

  @override
  Color get disabled => const Color(0xAA2196F3); // 투명도를 추가하여 disabled 상태 표현
}

class FunctionalWarningColorSchemes implements CustomColorSchemes {
  @override
  Color get normal => const Color(0xFFFFC107); // 기본 상태 (normal)

  @override
  Color get hover => const Color(0xFFFFD54F); // normal보다 약간 밝은 색상

  @override
  Color get active => const Color(0xFFE0A800); // normal보다 약간 어두운 색상

  @override
  Color get disabled => const Color(0xAAFFC107); // 투명도를 추가하여 disabled 상태 표현
}

class FunctionalDangerColorSchemes implements CustomColorSchemes {
  @override
  Color get normal => const Color(0xFFF44336); // 기본 상태 (normal)

  @override
  Color get hover => const Color(0xFFEF5350); // normal보다 약간 밝은 색상

  @override
  Color get active => const Color(0xFFD32F2F); // normal보다 약간 어두운 색상

  @override
  Color get disabled => const Color(0xAAF44336); // 투명도를 추가하여 disabled 상태 표현
}

class FunctionalGrayColorSchemes implements GrayColorSchemes {
  @override
  Color get gray900 => const Color(0xFF212529);

  @override
  Color get gray800 => const Color(0xFF343A40);

  @override
  Color get gray750 => const Color(0xFF3D3D3D);

  @override
  Color get gray700 => const Color(0xFF495057);

  @override
  Color get gray600 => const Color(0xFF868E96);

  @override
  Color get gray500 => const Color(0xFFADB5BD);

  @override
  Color get gray400 => const Color(0xFFCED4DA);

  @override
  Color get gray300 => const Color(0xFFDEE2E6);

  @override
  Color get gray200 => const Color(0xFFF1F3F5);

  @override
  Color get gray50 => const Color(0xFFF8F9FA);
}

BrandPrimaryColorSchemes brandPrimaryColorSchemes = BrandPrimaryColorSchemes();
FunctionalSuccessColorSchemes functionalSuccessColorSchemes =
    FunctionalSuccessColorSchemes();
FunctionalInformationColorSchemes functionalInformationColorSchemes =
    FunctionalInformationColorSchemes();
FunctionalWarningColorSchemes functionalWarningColorSchemes =
    FunctionalWarningColorSchemes();
FunctionalDangerColorSchemes functionalDangerColorSchemes =
    FunctionalDangerColorSchemes();
FunctionalGrayColorSchemes functionalGrayColorSchemes =
    FunctionalGrayColorSchemes();
