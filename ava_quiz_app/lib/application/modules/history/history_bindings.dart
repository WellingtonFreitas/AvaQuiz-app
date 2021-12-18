import 'package:ava_quiz_app/application/modules/history/history_controller.dart';
import 'package:get/get.dart';

class HistoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HistoryController(
        historyService: Get.find(),
        authService: Get.find(),
      ),
    );
  }
}
