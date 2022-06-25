import 'package:ecommures_app_courses/view/screens/auth/checkemail.dart';
import 'package:ecommures_app_courses/view/screens/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommures_app_courses/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:ecommures_app_courses/view/screens/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommures_app_courses/view/screens/auth/forgetpassword/verifycode.dart';
import 'package:ecommures_app_courses/view/screens/auth/login.dart';
import 'package:ecommures_app_courses/view/screens/auth/success_signup.dart';
import 'package:ecommures_app_courses/view/screens/language.dart';
import 'package:ecommures_app_courses/view/screens/onboriding.dart';
import 'package:flutter/material.dart';

import 'core/constant/routes.dart';
import 'view/screens/auth/signup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.language: (context) => const LanguagePage(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.checkemail: (context) => const CheckEmail(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
};
