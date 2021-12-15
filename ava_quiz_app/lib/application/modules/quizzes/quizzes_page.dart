// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:ava_quiz_app/application/modules/quizzes/widgets/app_bar_widget.dart';
import 'package:ava_quiz_app/application/modules/quizzes/widgets/quiz_card_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class QuizzesPage extends StatelessWidget {
  final User user;
  const QuizzesPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          user: user,
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              top: 120,
              left: 15,
              right: 15,
            ),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                QuizCardWidget(),
              ],
            ),
          ),
        ));
  }
}
