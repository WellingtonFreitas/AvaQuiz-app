// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/application/modules/module.dart';
import 'package:ava_quiz_app/application/modules/splash/splash_bindings.dart';
import 'package:ava_quiz_app/application/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    )
  ];
}
