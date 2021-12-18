// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace

import 'package:ava_quiz_app/application/modules/result/result_controller.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:ava_quiz_app/layout/app_images.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends GetView<ResultController> {
  const ResultPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (controller.resultModel.percent >= 70)
              Image.asset(AppImages.check),
            if (controller.resultModel.percent < 70)
              Image.asset(AppImages.error),
            Column(
              children: [
                if (controller.resultModel.percent >= 70)
                  Text(
                    'Parabéns',
                    style: AppTextStyles.heading40,
                  ),
                if (controller.resultModel.percent < 70)
                  Text(
                    'Reprovado',
                    style: AppTextStyles.heading40,
                  ),
                Text(
                  '\n${controller.resultModel.title}',
                  style: AppTextStyles.bodyBold,
                ),
                Text(
                  '\nVocê concluiu o exame com ${controller.resultModel.percent.ceil()}% de acertos',
                  style: AppTextStyles.body,
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
            TextButton(
              child: Text(
                'voltar ao inicio',
                style: TextStyle(
                  color: AppColors.grey,
                ),
              ),
              onPressed: () {
                Get.offAllNamed('/home');
              },
            )
          ],
        ),
      ),
    );
  }
}
