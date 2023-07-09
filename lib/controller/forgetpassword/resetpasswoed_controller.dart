import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/resetpassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/functions/handlingdata.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  late TextEditingController password;
  late TextEditingController repassword;

  String? email;

  StatusRequest? statusRequest;

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: 'Warning', middleText: 'Password not Match');
    }

    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postdata(email!, password.text);
      print('===================== Controller $response ');
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == 'success') {
          //data.addAll(response['data']);
          Get.offNamed(AppRoute.successResetPassword);
        } else {
          Get.defaultDialog(title: 'Warning', middleText: 'Try Again');
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
