// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print

import 'dart:convert';

import 'package:ava_quiz_app/application/models/quizz_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import './quizz_repository.dart';

class QuizzRepositoryImpl implements QuizzRepository {
  @override
  Future<void> createQuizzes() async {
    try {
      final response =
          await rootBundle.loadString("assets/database/jsonQuestions.json");

      final list = jsonDecode(response) as List;
      final quizzes = list.map((q) => QuizzModel.fromMap(q)).toList();
      var quizzCollection = FirebaseFirestore.instance.collection('quizzes');
      for (var item in quizzes) {
        quizzCollection.add(item.toMap());
      }
    } catch (e) {
      print('erro ${e}');
    }
  }

  @override
  Future<List<QuizzModel>> getQuizzes() async {
    var response = await FirebaseFirestore.instance.collection('quizzes').get();
    final quizzes = <QuizzModel>[];
    for (var quizz in response.docs) {
      quizzes.add(QuizzModel.fromMap(quizz.data()));
    }
    return quizzes;
  }
}
