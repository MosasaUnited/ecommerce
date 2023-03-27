import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccessResetPassword();
}
class ResetPasswordControllerImp extends ResetPasswordController {

  late TextEditingController password;
  late TextEditingController repassword;


  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() {
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