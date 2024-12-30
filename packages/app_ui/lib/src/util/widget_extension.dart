import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension WidgetExtension on Widget {
  Widget showAnimate() {
    return animate().fadeIn(curve: Curves.easeIn).moveX(curve: Curves.easeIn);
  }
}
