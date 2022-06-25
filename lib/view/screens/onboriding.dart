import 'package:ecommures_app_courses/controller/onboarding_controller.dart';
import 'package:ecommures_app_courses/view/widget/onboarding/custombutton.dart';
import 'package:ecommures_app_courses/view/widget/onboarding/customflatbutton.dart';
import 'package:ecommures_app_courses/view/widget/onboarding/customslider.dart';
import 'package:ecommures_app_courses/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding(),
                    CustomFlatButtonOnBoarding(),
                  ],
                ))
          ]),
        ));
  }
}
