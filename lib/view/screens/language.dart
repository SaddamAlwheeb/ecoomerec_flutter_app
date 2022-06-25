import 'package:ecommures_app_courses/core/constant/routes.dart';
import 'package:ecommures_app_courses/core/localization/languagelocal.dart';
import 'package:ecommures_app_courses/view/widget/language/onlanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends GetView<LocalController> {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('chooseLanguage'.tr,
                style: Theme.of(context).textTheme.headline1),
            MaterialButtonLang(
                onPressed: () {
                  controller.changeLanguage('ar');
                  Get.toNamed(AppRoute.onBoarding);
                },
                langeCode: 'ar'),
            MaterialButtonLang(
                onPressed: () {
                  controller.changeLanguage('en');
                  Get.toNamed(AppRoute.onBoarding);
                  //Get.toNamed(AppRoute.onBoarding) ;
                },
                langeCode: 'en'),
          ],
        ),
      ),
    );
  }
}
