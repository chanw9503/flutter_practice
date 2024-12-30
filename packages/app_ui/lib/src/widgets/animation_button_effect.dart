import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class BaseAnimationButton extends StatefulWidget {
  final Function()? onTap;
  final bool disabled;
  final Color? hoverColor;
  final Color? focusColor;
  final Color? splashColor;
  final Color? highlightColor;
  final double? borderRadius;

  const BaseAnimationButton({
    super.key,
    this.onTap,
    this.hoverColor,
    this.focusColor,
    this.splashColor,
    this.highlightColor,
    this.disabled = false,
    this.borderRadius,
  });

  @override
  State<BaseAnimationButton> createState() => _BaseAnimationButtonState();
}

class _BaseAnimationButtonState extends State<BaseAnimationButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: widget.disabled
            ? const SizedBox()
            : InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 15.r),
                ),
                hoverColor: widget.hoverColor ??
                    context.informationActive.withValues(alpha: 0.05),
                focusColor: widget.focusColor ??
                    context.informationActive.withValues(alpha: 0.08),
                splashColor: context.informationActive.withValues(alpha: 0.08),
                highlightColor:
                    context.informationActive.withValues(alpha: 0.05),
                onTap: () {
                  widget.onTap?.call();
                },
              ));
  }
}
