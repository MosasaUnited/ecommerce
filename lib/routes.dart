import 'package:ecommerce/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/verifycode.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'core/constant/routes.dart';
import 'view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp : (context) => const SignUp(),
  AppRoute.forgetPassword : (context) => const ForgetPassword(),
  AppRoute.resetPassword : (context) => const ResetPassword(),
  AppRoute.verifyCode : (context) => const VerifyCode(),

  // OnBoarding
  AppRoute.onBoarding : (context) => const OnBoarding(),
};