// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/application/modules/login/login_bindings.dart';
import 'package:ava_quiz_app/application/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../module.dart';

class LoginModule extends Module{
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
      binding: LoginBindings(),
    )
  ];
}
