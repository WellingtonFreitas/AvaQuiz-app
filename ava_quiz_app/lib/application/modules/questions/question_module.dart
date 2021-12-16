import 'package:ava_quiz_app/application/modules/module.dart';
import 'package:ava_quiz_app/application/modules/questions/question_bindings.dart';
import 'package:ava_quiz_app/application/modules/questions/question_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class QuestionModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/question',
      page: () => QuestionPage(),
      binding: QuestionBindings(),
    )
  ];
}
