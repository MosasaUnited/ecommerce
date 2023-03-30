import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController{
  checkPhone();
  goToVerifyCode();
}
class ForgetPasswordControllerImp extends ForgetPasswordController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController phone;


  @override
  checkPhone() {}

  @override
  goToVerifyCode() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print('Valid');
      Get.offNamed(AppRoute.verifyCode);
    }else{
      print('Not Valid');
    }

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