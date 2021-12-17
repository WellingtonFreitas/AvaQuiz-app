// ignore_for_file: prefer_const_constructors, unused_element

import 'package:ava_quiz_app/application/models/awnser_model.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';

class AwnserWidget extends StatelessWidget {
  final AwnserModel awnser;
  final ValueChanged<bool> onTap;
  final bool isSelected;
  const AwnserWidget({
    Key? key,
    required this.awnser,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  Color get _selectedColorRight =>
      awnser.isRight ? AppColors.greenDarkColor : AppColors.redDarkColor;

  Color get _selectedBorderRight =>
      awnser.isRight ? AppColors.greenLightColor : AppColors.redLightColor;

  Color get _selectedColorCardRight =>
      awnser.isRight ? AppColors.greenLightColor : AppColors.redLightColor;

  Color get _selectedBorderCardRight =>
      awnser.isRight ? AppColors.greenDarkColor : AppColors.redDarkColor;

  TextStyle get _selectedTextStyleRight =>
      awnser.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => awnser.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(awnser.isRight);
      },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color: isSelected ? _selectedBorderCardRight : AppColors.border,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                awnser.title,
                style:
                    isSelected ? _selectedTextStyleRight : AppTextStyles.body,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.white,
                borderRadius: BorderRadius.circular(500),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: isSelected ? _selectedBorderRight : AppColors.grey,
                  ),
                ),
              ),
              child: isSelected
                  ? Icon(
                      _selectedIconRight,
                      color: AppColors.white,
                      size: 16,
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
