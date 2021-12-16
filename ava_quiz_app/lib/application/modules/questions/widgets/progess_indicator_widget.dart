// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:flutter/material.dart';

class ProgessIndicatorWidget extends StatelessWidget {
  final double value;
  const ProgessIndicatorWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
