import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/cutsttextsighnup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          CustomTextBodyAuth(
              text:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.username,
            hinttext: "Enter Your Username",
            iconData: Icons.person_outline,
            labeltext: "Username",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "Enter Your Phone",
            iconData: Icons.phone_android_outlined,
            labeltext: "Phone",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "Sign Up",
              onPressed: () {
                controller.signUp();
              }),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: " have an account ? ",
            texttwo: " SignIn ",
            onTap: () {
              controller.goToSignIn();
            },
          ),
        ]),
      ),
    );
  }
}
