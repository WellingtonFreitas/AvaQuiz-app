// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ava_quiz_app/application/modules/history/history_page.dart';
import 'package:ava_quiz_app/application/modules/home/home_binding.dart';
import 'package:ava_quiz_app/application/modules/home/home_controller.dart';
import 'package:ava_quiz_app/application/modules/quizzes/quizzes_bindings.dart';
import 'package:ava_quiz_app/application/modules/quizzes/quizzes_page.dart';
import 'package:ava_quiz_app/application/ui/my_flutter_icons_icons.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Navigator(
          initialRoute: '/quiz',
          key: Get.nestedKey(HomeController.NAVIGATION_KEY),
          onGenerateRoute: (settings) {
            if (settings.name == '/quiz') {
              return GetPageRoute(
                settings: settings,
                page: () => QuizzesPage(
                  user: controller.user!,
                ),
                binding: QuizzesBindings(),
              );
            }
            if (settings.name == '/history') {
              return GetPageRoute(
                settings: settings,
                page: () => HistoryPage(),
                binding: HomeBinding(),
              );
            }
            return null;
          },
        ),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.grey,
              onTap: controller.goToPage,
              currentIndex: controller.pageIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(MyFlutterIcons.home_3_line),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyFlutterIcons.history_line,
                  ),
                  label: 'historico',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.logout_outlined,
                  ),
                  label: 'sair',
                )
              ]);
        }));
  }
}
