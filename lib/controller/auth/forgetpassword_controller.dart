import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController{
  checkPhone();
  goToVerifyCode();
}
class ForgetPasswordControllerImp extends ForgetPasswordController {

  late TextEditingController phone;


  @override
  checkPhone() {}

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() {
    phone = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    phone.dispose();
    super.dispose();
  }

}