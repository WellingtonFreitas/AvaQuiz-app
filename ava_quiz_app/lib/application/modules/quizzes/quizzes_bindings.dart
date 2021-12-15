import 'package:ava_quiz_app/application/modules/quizzes/quizzes_controller.dart';
import 'package:get/get.dart';

class QuizzesBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      QuizzesController(quizzService: Get.find()),
    );
  }
}
