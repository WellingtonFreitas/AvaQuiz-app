// ignore_for_file: prefer_const_constructors, prefer_initializing_formals, unnecessary_this

import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final Color fontColor;
  final Color backGroundColor;
  final Color borderColor;
  final VoidCallback onTap;

  const ButtonWidget({
    Key? key,
    required this.label,
    required this.backGroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  const ButtonWidget.next(
      {Key? key, required String label, required VoidCallback onTap})
      : this.backGroundColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.fontColor = AppColors.grey,
        this.onTap = onTap,
        this.label = label;

  const ButtonWidget.confirm(
      {Key? key, required String label, required VoidCallback onTap})
      : this.backGroundColor = AppColors.greenDarkColor,
        this.borderColor = AppColors.greenDarkColor,
        this.fontColor = AppColors.white,
        this.onTap = onTap,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backGroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: borderColor),
        ),
      ),
      child: Text(label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          )),
      onPressed: onTap,
    );
  }
}
