import 'dart:ui';

import 'package:get/get.dart';

import '../services/services.dart';

class LocalController extends GetxController {
  Locale? lang;
  MyServices myServices = Get.find();

  changeLanguage(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPref.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedLang = myServices.sharedPref.getString('lang');
    if (sharedLang == 'ar') {
      lang = const Locale('ar');
    } else if (sharedLang == 'en') {
      lang = const Locale('en');
    } else {
      lang = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
