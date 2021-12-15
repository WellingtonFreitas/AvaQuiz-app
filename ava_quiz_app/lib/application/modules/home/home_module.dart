// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/application/modules/home/home_binding.dart';
import 'package:ava_quiz_app/application/modules/home/home_page.dart';
import 'package:ava_quiz_app/application/modules/module.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
