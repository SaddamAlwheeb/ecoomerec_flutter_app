import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';

class CustomFlatButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomFlatButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: 40,
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        onPressed: () {
          controller.skip();
        },
        child: const Text(
          "skip",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
