import 'package:ecommures_app_courses/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  login() {}

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
