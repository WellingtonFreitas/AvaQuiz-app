import 'package:ava_quiz_app/application/models/quizz_model.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  QuizzModel quizz = Get.arguments;
  int currentQuestion = 0;
}