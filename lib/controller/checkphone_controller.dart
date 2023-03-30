import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class CheckPhoneController extends GetxController{
  checkPhone();
  goToVerifyCode();
}
class CheckPhoneControllerImp extends CheckPhoneController {

  late TextEditingController phone;


  @override
  checkPhone() {}

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.verifyCodeSignUp);
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