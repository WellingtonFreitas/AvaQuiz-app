import 'package:ava_quiz_app/application/models/quizz_model.dart';

abstract class QuizzRepository {
  Future<List<QuizzModel>> getQuizzes();
  Future<void> createQuizzes();
}
