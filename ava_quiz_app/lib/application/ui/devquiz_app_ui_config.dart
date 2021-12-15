// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:flutter/material.dart';

class DevquizAppUiConfig {
  DevquizAppUiConfig._();
  static String title = 'AvaQuiz';
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Color(0xFFE1E1E5),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primaryColor,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
