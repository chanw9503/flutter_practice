import 'package:app_ui/src/widgets/animation_button_effect.dart';
import 'package:flutter/material.dart';

class InkButton extends StatelessWidget {
  final double? borderRadius;
  final GestureTapCallback? onPressed;
  final Widget? child;

  const InkButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Opacity(opacity: onPressed != null ? 1 : 0.6, child: child),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: BaseAnimationButton(
                borderRadius: borderRadius,
                onTap: onPressed,
              ))
        ],
      );
    });
  }
}
