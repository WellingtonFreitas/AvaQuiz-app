// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/application/modules/login/login_controller.dart';
import 'package:ava_quiz_app/layout/app_gradients.dart';
import 'package:ava_quiz_app/layout/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            gradient: AppGradients.linear,
          ),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 400,
                child: Image.asset(AppImages.logo),
              ),
              Container(
                width: 300,
                height: 50,
                margin: EdgeInsets.only(top: 20),
                child: SignInButton(
                  Buttons.Google,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  text: 'Entrar com o Google',
                  onPressed: () => controller.login(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
