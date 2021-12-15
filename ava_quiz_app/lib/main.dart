import 'package:ava_quiz_app/application/bindings/application_bindings.dart';
import 'package:ava_quiz_app/application/modules/home/home_module.dart';
import 'package:ava_quiz_app/application/modules/login/login_module.dart';
import 'package:ava_quiz_app/application/ui/devquiz_app_ui_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'application/modules/splash/splash_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ApplicationBindings(),
      title: DevquizAppUiConfig.title,
      theme: DevquizAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
      ],
    );
  }
}
