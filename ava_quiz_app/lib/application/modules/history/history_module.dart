import 'package:ava_quiz_app/application/modules/history/history_bindings.dart';
import 'package:ava_quiz_app/application/modules/history/history_page.dart';
import 'package:ava_quiz_app/application/modules/module.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HistoryModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/history',
      page: () => HistoryPage(),
      binding: HistoryBindings(),
    )
  ];
}
