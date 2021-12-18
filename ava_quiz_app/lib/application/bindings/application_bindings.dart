import 'package:ava_quiz_app/application/auth/auth_service.dart';
import 'package:ava_quiz_app/repositories/History/history_repository.dart';
import 'package:ava_quiz_app/repositories/History/history_repository_impl.dart';
import 'package:ava_quiz_app/repositories/login/login_repository.dart';
import 'package:ava_quiz_app/repositories/login/login_repository_impl.dart';
import 'package:ava_quiz_app/repositories/quizz/quizz_repository.dart';
import 'package:ava_quiz_app/repositories/quizz/quizz_repository_impl.dart';
import 'package:ava_quiz_app/services/history/history_service.dart';
import 'package:ava_quiz_app/services/history/history_service_impl.dart';
import 'package:ava_quiz_app/services/login/login_service.dart';
import 'package:ava_quiz_app/services/login/login_service_impl.dart';
import 'package:ava_quiz_app/services/quizz/quizz_service.dart';
import 'package:ava_quiz_app/services/quizz/quizz_service_impl.dart';
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
    Get.put(AuthService()).init();
    Get.lazyPut<QuizzRepository>(
      () => QuizzRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<QuizzService>(
      () => QuizzServiceImpl(
        quizzRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<HistoryRepository>(
      () => HistoryRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<HistoryService>(
      () => HistoryServiceImpl(historyRepository: Get.find()),
      fenix: true,
    );
  }
}
