import 'package:ecommures_app_courses/core/localization/languagelocal.dart';
import 'package:ecommures_app_courses/core/localization/translation.dart';
import 'package:ecommures_app_courses/core/services/services.dart';
import 'package:ecommures_app_courses/routes.dart';
import 'package:ecommures_app_courses/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.lang,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        primarySwatch: Colors.blue,
      ),
      home: const LanguagePage(),
      routes: routes,
    );
  }
}
