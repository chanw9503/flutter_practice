import 'package:flutter/material.dart';

import '../../app_ui.dart';
import '../styles/effects/shadow.dart';

class SectionCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final double? borderRadius;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final VoidCallback? onTap;

  const SectionCard({
    super.key,
    this.padding,
    this.child,
    this.borderRadius,
    this.backgroundColor,
    this.boxShadow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
        boxShadow: boxShadow,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
          hoverColor: context.informationActive.withValues(alpha: 0.05),
          focusColor: context.informationActive.withValues(alpha: 0.08),
          splashColor: context.informationActive.withValues(alpha: 0.08),
          highlightColor: context.informationActive.withValues(alpha: 0.05),
          onTap: onTap,
          child: Padding(
            padding: padding ??
                EdgeInsets.symmetric(horizontal: 12.r, vertical: 8.r),
            child: child,
          ),
        ),
      ),
    ).showAnimate();
  }

  factory SectionCard.low({
    EdgeInsetsGeometry? padding,
    Widget? child,
    VoidCallback? onTap,
    Color? backgroundColor,
  }) {
    return SectionCard(
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
      borderRadius: 15,
      backgroundColor: backgroundColor ?? const Color(0xFFFDFDFD),
      boxShadow: [smallShadow],
      onTap: onTap,
      child: child,
    );
  }

  factory SectionCard.medium({
    EdgeInsetsGeometry? padding,
    Widget? child,
    VoidCallback? onTap,
    Color? backgroundColor,
  }) {
    return SectionCard(
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
      borderRadius: 15,
      backgroundColor: backgroundColor ?? const Color(0xFFFDFDFD),
      boxShadow: [mediumShadow],
      onTap: onTap,
      child: child,
    );
  }

  factory SectionCard.large({
    EdgeInsetsGeometry? padding,
    Widget? child,
    VoidCallback? onTap,
    Color? backgroundColor,
  }) {
    return SectionCard(
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
      borderRadius: 15,
      backgroundColor: backgroundColor ?? const Color(0xFFFDFDFD),
      boxShadow: [largeShadow],
      onTap: onTap,
      child: child,
    );
  }
}
