// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:ava_quiz_app/application/modules/questions/question_controller.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/progess_indicator_widget.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/question_indicator_widget.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/quizz_widget.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionPage extends GetView<QuestionController> {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(186),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => {
                  Get.offAllNamed('/home'),
                },
              ),
              QuestionIndicatorWidget(
                currentQuestion: controller.currentQuestion + 1,
                length: controller.quizz.questions.length,
              ),
              SizedBox(
                height: 16,
              ),
              ProgessIndicatorWidget(
                value: controller.currentQuestion +
                    1 / controller.quizz.questions.length,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: QuizzWidget(
            question: controller.quizz.questions[controller.currentQuestion],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          height: 48,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.white),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              side: MaterialStateProperty.all(
                BorderSide(color: AppColors.border),
              ),
            ),
            child: Text(
              'Pular',
            ),
            onPressed: () => {},
          ),
        ),
      ),
    );
  }
}
