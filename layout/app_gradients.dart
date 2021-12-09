import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  // ignore: prefer_const_constructors
  static final linear = LinearGradient(colors: const [
    Color(0xFFFF7A00),
    Color(0xFFD24545),
  ], stops: const [
    0.0,
    0.795
  ], transform: const GradientRotation(2.23959913 * pi));
}
