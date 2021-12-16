// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/application/models/awnser_model.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';

class AwnserWidget extends StatelessWidget {
  final AwnserModel awnser;
  const AwnserWidget({
    Key? key,
    required this.awnser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              awnser.title,
              style: AppTextStyles.body,
            ),
          ),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(500),
              border: Border.fromBorderSide(
                BorderSide(color: AppColors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
