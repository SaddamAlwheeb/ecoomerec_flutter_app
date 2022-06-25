import 'package:ecommures_app_courses/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommures_app_courses/view/widget/auth/cutsttextsighnup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/logoauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Sign In',
          textAlign: TextAlign.end,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const LogoAuth(),
            CustomTextTitleAuth(text: 'welcome'),
            CustomTextBodyAuth(
                text:
                    'Sign In your Email ant Password or continue with soucile media'),
            const SizedBox(
              height: 30,
            ),
            CustonTextFormAuth(
                hinttext: 'Enter Your Email',
                iconData: Icons.email_outlined,
                labeltext: 'Email'),
            CustonTextFormAuth(
                hinttext: 'Enter Your Password',
                iconData: Icons.lock_clock_outlined,
                labeltext: 'Password'),
            InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: const Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtomAuth(text: 'Continue'),
            CustomTextSignUpOrSignIn(
              textone: 'If you have account',
              texttwo: 'click here',
              onTap: () {
                controller.goToSignUp();
              },
            )
          ],
        ),
      ),
    );
  }
}
