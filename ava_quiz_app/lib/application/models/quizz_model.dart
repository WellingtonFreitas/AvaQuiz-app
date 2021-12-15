import 'dart:convert';

import 'package:ava_quiz_app/application/models/question_model.dart';

class QuizzModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAwnsered;

  QuizzModel({
    required this.title,
    required this.questions,
    this.questionAwnsered = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionAwnsered': questionAwnsered,
    };
  }

  factory QuizzModel.fromMap(Map<String, dynamic> map) {
    return QuizzModel(
      title: map['title'] ?? '',
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionAwnsered: map['questionAwnsered']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizzModel.fromJson(String source) =>
      QuizzModel.fromMap(json.decode(source));
}
