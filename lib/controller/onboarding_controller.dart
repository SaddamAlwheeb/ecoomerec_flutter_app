import 'package:ecommures_app_courses/core/constant/routes.dart';
import 'package:ecommures_app_courses/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnBoardingController extends GetxController {
  next();

  skip();

  onChangePage(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage == onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: Duration(microseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onChangePage(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  skip() {
    Get.offAllNamed(AppRoute.login);
  }
}
