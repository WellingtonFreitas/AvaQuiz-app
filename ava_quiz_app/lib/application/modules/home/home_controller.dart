// ignore_for_file: unused_field, constant_identifier_names

import 'package:ava_quiz_app/services/login/login_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final LoginService _loginService;

  static const NAVIGATION_KEY = 1;
  static const INDEX_PAGE_EXIT = 2;
  final _pageIndex = 0.obs;

  HomeController({
    required LoginService loginService,
  }) : _loginService = loginService;

  int get pageIndex => _pageIndex.value;
  final _pages = ['/quiz', '/history'];

  void goToPage(int page) {
    _pageIndex(page);
    if (page == INDEX_PAGE_EXIT) {
      _loginService.logout();
    } else {
      Get.offNamed(_pages[page], id: NAVIGATION_KEY);
    }
  }
}
