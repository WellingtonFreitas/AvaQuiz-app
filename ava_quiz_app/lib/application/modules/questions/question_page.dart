// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:ava_quiz_app/application/modules/questions/question_controller.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/button_widget.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/progess_indicator_widget.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/question_indicator_widget.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/question_widget.dart';
import 'package:ava_quiz_app/application/modules/result/result_page.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final controller = QuestionController();
  void onSelected(bool value) {
    if (value) {
      controller.awnserRight++;
    }
    nextQuestion();
  }

  void nextQuestion() {
    if (controller.currentQuestion < controller.quizz.questions.length) {
      controller.nextQuestion();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
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
                currentQuestion: controller.currentQuestion,
                length: controller.quizz.questions.length,
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
          child: QuestionWidget(
            question: controller.quizz.questions[controller.currentQuestion],
            onSelected: onSelected,
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              if (controller.currentQuestion + 1 <
                  controller.quizz.questions.length)
                Expanded(
                  child: ButtonWidget.next(
                    label: 'Pular',
                    onTap: nextQuestion,
                  ),
                )
              else if (controller.currentQuestion + 1 ==
                  controller.quizz.questions.length)
                Expanded(
                  child: ButtonWidget.confirm(
                      label: 'Confirmar',
                      onTap: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultPage(
                                  title: controller.quizz.title,
                                  lenght: controller.quizz.questions.length,
                                  result: controller.awnserRight,
                                ),
                              ),
                            )
                          }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
