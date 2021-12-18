import 'package:ava_quiz_app/application/modules/module.dart';
import 'package:ava_quiz_app/application/modules/result/result_binding.dart';
import 'package:ava_quiz_app/application/modules/result/result_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class ResultModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/result',
      page: () => ResultPage(),
      binding: ResultBinding(),
    )
  ];
}
