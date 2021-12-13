import 'package:ava_quiz_app/repositories/login/login_repository.dart';
import 'package:ava_quiz_app/repositories/login/login_repository_impl.dart';
import 'package:ava_quiz_app/services/login/login_service.dart';
import 'package:ava_quiz_app/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(loginRepository: Get.find()),
      fenix: true,
    );
  }
}
