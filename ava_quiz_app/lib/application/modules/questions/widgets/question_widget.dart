import 'package:ava_quiz_app/application/models/question_model.dart';
import 'package:ava_quiz_app/application/modules/questions/widgets/awnser_widget.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;
  const QuestionWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  _QuizzWidgetState createState() => _QuizzWidgetState();
}

class _QuizzWidgetState extends State<QuestionWidget> {
  int indexSelected = -1;
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
            height: 20,
          ),
          ...List.generate(
            widget.question.awnsers.length,
            (index) => AwnserWidget(
              awnser: widget.question.awnsers[index],
              isSelected: indexSelected == index,
              onTap: (value) {
                indexSelected = index;
                setState(() {});
                Future.delayed(Duration(seconds: 1)).then((_) {
                  widget.onSelected(value);
                  indexSelected = -1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
