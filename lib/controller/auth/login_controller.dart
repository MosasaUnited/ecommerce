import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/functions/handlingdata.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController email;
  late TextEditingController password;

  bool isShowPassWord = true;

  MyServices myServices = Get.find();

  showPassWord() {
    isShowPassWord = isShowPassWord == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print('===================== Controller $response ');
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == 'success') {
          //data.addAll(response['data']);
          myServices.sharedPreferences
              .setString('id', response['data']['users_id']);
          myServices.sharedPreferences
              .setString('username', response['data']['users_name']);
          myServices.sharedPreferences
              .setString('email', response['data']['users_email']);
          myServices.sharedPreferences
              .setString('phone', response['data']['users_phone']);
          myServices.sharedPreferences.setString('step', '2');

          Get.offNamed(AppRoute.homepage);
        } else {
          Get.defaultDialog(
              title: 'Warning', middleText: 'Email or Password is not Correct');
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
