import 'package:ava_quiz_app/application/modules/questions/question_controller.dart';
import 'package:get/get.dart';

class QuestionBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      QuestionController(authService: Get.find()),
    );
  }
}
