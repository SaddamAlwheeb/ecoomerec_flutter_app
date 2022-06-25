import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();

  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    super.onClose();
  }
}
