import 'package:ava_quiz_app/application/models/question_model.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/awnser_widget.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizzWidget extends StatefulWidget {
  final QuestionModel question;
  const QuizzWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  _QuizzWidgetState createState() => _QuizzWidgetState();
}

class _QuizzWidgetState extends State<QuizzWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.question.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.awnsers.length; i++)
            AwnserWidget(
              awnser: widget.question.awnsers[i],
            ),
        ],
      ),
    );
  }
}
