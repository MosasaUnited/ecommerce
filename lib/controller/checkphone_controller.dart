import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class CheckPhoneController extends GetxController{
  checkPhone();
  goToSuccessSignUp();
}
class CheckPhoneControllerImp extends CheckPhoneController {

  late TextEditingController phone;


  @override
  checkPhone() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
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