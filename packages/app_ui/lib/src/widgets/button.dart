import 'package:app_ui/src/styles/colors/imdr_app_color_schemes.dart';
import 'package:app_ui/src/widgets/ink_button.dart';
import 'package:flutter/material.dart';

import '../../app_ui.dart';
import '../styles/effects/shadow.dart';

class AdsFiledButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;

  const AdsFiledButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.backgroundColor,
    this.height,
    this.width,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkButton(
      borderRadius: 15.r,
      onPressed: onPressed,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: backgroundColor ?? context.brandNormal,
        ),
        height: height ?? 42.h,
        width: width,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (icon != null) SizedBox(width: 10.w),
            Text(
              text,
              style: textStyle ?? context.h4?.apply(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class AdsTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final bool isUnderline;
  final Widget? icon;

  const AdsTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.textStyle,
    this.padding,
    this.icon,
    this.isUnderline = false,
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return TextButton.icon(
          onPressed: onPressed,
          icon: icon!,
          label:
              Text(text, style: context.h4?.apply(color: context.brandNormal)));
    } else {
      return TextButton(
        onPressed: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: isUnderline
                ? Border(
                    bottom: BorderSide(
                      color: context.brandNormal,
                      width: 1,
                    ),
                  )
                : null,
          ),
          child: Text(text,
              style: textStyle ??
                  context.h4?.apply(
                    color: context.brandNormal,
                  )),
        ),
      );
    }
  }
}

class AdsOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  final List<BoxShadow>? boxShadow;

  const AdsOutlinedButton({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.onPressed,
    this.textStyle,
    this.padding,
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
  });

  factory AdsOutlinedButton.textBlack({
    required String text,
    VoidCallback? onPressed,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
  }) {
    return AdsOutlinedButton(
      text: text,
      onPressed: onPressed,
      textStyle: TextStyles.h4.apply(color: functionalGrayColorSchemes.gray700),
      padding: padding,
      height: height,
      width: width,
    );
  }

  factory AdsOutlinedButton.shadow({
    required String text,
    VoidCallback? onPressed,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
    Color? backgroundColor,
    Color? borderColor,
  }) {
    return AdsOutlinedButton(
      text: text,
      onPressed: onPressed,
      padding: padding,
      height: height,
      width: width,
      backgroundColor: backgroundColor,
      borderColor: borderColor ?? functionalGrayColorSchemes.gray400,
      boxShadow: [smallShadow],
    );
  }

  factory AdsOutlinedButton.shadowBlackText({
    required String text,
    VoidCallback? onPressed,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
    List<BoxShadow>? boxShadow,
    Color? backgroundColor,
    Color? borderColor,
  }) {
    return AdsOutlinedButton(
      text: text,
      onPressed: onPressed,
      textStyle: TextStyles.h4.apply(color: functionalGrayColorSchemes.gray700),
      padding: padding,
      height: height,
      width: width,
      backgroundColor: backgroundColor,
      borderColor: borderColor ?? functionalGrayColorSchemes.gray400,
      boxShadow: boxShadow,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkButton(
      borderRadius: 15.r,
      onPressed: onPressed,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: backgroundColor ?? context.whiteLow,
          border: Border.all(color: borderColor ?? context.outline, width: 1),
          boxShadow: boxShadow,
        ),
        height: height ?? 42.h,
        width: width,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: textStyle ??
                  context.h4?.apply(
                    color: context.brandNormal,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdsIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final Color? backgroundColor;
  final double? size;
  final EdgeInsetsGeometry? padding;

  const AdsIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.backgroundColor,
    this.size,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkButton(
      borderRadius: 15.r,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: backgroundColor ?? context.whiteLow,
          border: Border.all(color: context.outline, width: 1),
        ),
        height: size ?? 46.r,
        width: size ?? 46.r,
        child: Center(
          child: Icon(
            icon,
            color: context.brandNormal,
          ),
        ),
      ),
    );
  }
}

class AdsBottomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? borderColor;

  const AdsBottomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.textStyle,
    this.padding,
    this.backgroundColor,
    this.borderColor,
  });

  factory AdsBottomButton.outlined({
    required String text,
    TextStyle? textStyle,
    VoidCallback? onPressed,
  }) {
    return AdsBottomButton(
      text: text,
      onPressed: onPressed,
      textStyle: textStyle ??
          TextStyles.h3.apply(color: brandPrimaryColorSchemes.normal),
      borderColor: functionalGrayColorSchemes.gray400,
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkButton(
      borderRadius: 15.r,
      onPressed: onPressed,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: backgroundColor ?? context.brandNormal,
          border: borderColor != null
              ? Border.all(color: context.outline, width: 1)
              : null,
        ),
        height: 48.h,
        child: Center(
          child: Text(
            text,
            style: textStyle ?? context.h3?.apply(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
