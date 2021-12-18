import 'package:ava_quiz_app/application/auth/auth_service.dart';
import 'package:ava_quiz_app/application/models/quizz_model.dart';
import 'package:ava_quiz_app/application/models/result_model.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  final AuthService _authService;

  QuizzModel quizz = Get.arguments;
  int currentQuestion = 0;
  int awnserRight = 0;

  QuestionController({
    required AuthService authService,
  }) : _authService = authService;

  void nextQuestion() {
    currentQuestion = currentQuestion + 1;
  }

  void goToResult() {
    final user = _authService.user;

    final resultModel = ResultModel(
      title: quizz.title,
      length: quizz.questions.length,
      reusult: awnserRight,
      userId: user!.uid,
      percent: (awnserRight / quizz.questions.length) * 100,
      date: DateTime.now(),
    );
    Get.offAllNamed('/result', arguments: resultModel);
  }
}
