// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ava_quiz_app/application/models/result_model.dart';
import 'package:ava_quiz_app/application/ui/progess_indicator_widget.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final ResultModel result;
  const HistoryCard({
    Key? key,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.border,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${result.title}',
              style: AppTextStyles.heading15,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('${result.percent.ceil()}%'),
                Container(
                  width: 250,
                  margin: EdgeInsets.all(10),
                  child: ProgessIndicatorWidget(
                    value: result.reusult / result.length,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
