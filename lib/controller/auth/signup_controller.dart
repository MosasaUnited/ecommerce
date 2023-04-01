import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class SignUpController extends GetxController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  signUp();
  goToSignIn();
}
class SignUpControllerImp extends SignUpController {

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;


  @override
  signUp()
  {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print('Valid');
      Get.offNamed(AppRoute.verifyCodeSignUp);
    }else{
      print('Not Valid');}
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }

}