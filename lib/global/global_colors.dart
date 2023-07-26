import 'dart:math';

import 'package:flutter/material.dart';

class GlobalColors {
  static const Color bgColor = Color(0xfff1f3f5);
  static const Color bgApp = Color(0xFF50C878);
  static const Gradient gradientApp = LinearGradient(colors: [
    Color(0xFF3CD27D),
    Color(0xFF6CC51D),
  ],
  transform: GradientRotation(pi/4)
  );
  static const Color bgAppt = Color.fromRGBO(14, 135, 64, 1);
  static const Color bgApptp = Color(0xFF6CC51D );
  static const Color bgErr = Color.fromRGBO(239, 18, 47, 1);
  static const Color bgBlue = Color.fromRGBO(28, 159, 226, 1);
}
