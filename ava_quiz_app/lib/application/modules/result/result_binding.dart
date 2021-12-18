import 'package:ava_quiz_app/application/modules/result/result_controller.dart';
import 'package:get/get.dart';

class ResultBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ResultController(historyService: Get.find()));
  }
}
