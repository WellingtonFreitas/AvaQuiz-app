import 'package:ava_quiz_app/application/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        loginService: Get.find(),
      ),
      fenix: true,
    );
  }
}
