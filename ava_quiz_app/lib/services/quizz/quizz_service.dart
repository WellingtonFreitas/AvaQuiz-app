
import 'package:ava_quiz_app/application/models/quizz_model.dart';

abstract class QuizzService {
  Future<List<QuizzModel>> getQuizzes();
  Future<void> createQuizzzes();
}