import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}
class VerifyCodeControllerImp extends VerifyCodeController {

  late String verifycode;


  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
  }

}