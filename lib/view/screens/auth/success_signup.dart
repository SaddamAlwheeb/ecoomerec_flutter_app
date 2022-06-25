import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/routes.dart';
import '../../widget/auth/custombuttonauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.primaryColor,
          )),
          const Text("...."),
          const Text("...."),
          const Spacer(),
          Container(
            width: double.infinity,
            child: CustomButtomAuth(
                text: "Go To Login",
                onPressed: () {
                  Get.toNamed(AppRoute.login);
                }),
          ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}
