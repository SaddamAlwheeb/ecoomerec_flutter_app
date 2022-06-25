import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(text: "New Password"),
          const SizedBox(height: 10),
          CustomTextBodyAuth(text: "Please Enter new Password"),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Re Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
