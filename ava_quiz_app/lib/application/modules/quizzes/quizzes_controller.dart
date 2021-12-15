// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print

import 'package:ava_quiz_app/application/models/quizz_model.dart';
import 'package:ava_quiz_app/services/quizz/quizz_service.dart';
import 'package:get/get.dart';

class QuizzesController extends GetxController {
  final QuizzService _quizzService;

  final quizzes = <QuizzModel>[].obs;

  QuizzesController({
    required QuizzService quizzService,
  }) : _quizzService = quizzService;

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final quizzesData = await _quizzService.getQuizzes();
      quizzes.assignAll(quizzesData);
    } catch (e) {
      print('erro ${e}');
    }
  }
}
