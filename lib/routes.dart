import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'core/constant/routes.dart';
import 'view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login : (context) => const Login(),
  AppRoute.onBoarding : (context) => const OnBoarding(),
};