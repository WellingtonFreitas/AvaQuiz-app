// ignore_for_file: unnecessary_overrides, unused_field, avoid_print

import 'package:ava_quiz_app/application/ui/loader_mixin.dart';
import 'package:ava_quiz_app/application/ui/messsages_mixin.dart';
import 'package:ava_quiz_app/services/login/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MesssagesMixin {
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  final LoginService _loginService;

  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading.value = true;
      await _loginService.login();
      loading.value = false;
      MessageModel.sucess(
        title: 'Sucesso',
        message: 'Login realizado com sucesso',
      );
    } catch (e) {
      print(e);
      MessageModel.error(
          title: 'Erro', message: 'Erro ao realizar login ${e.toString()}');
    }
  }
}
