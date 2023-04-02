import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/logoauth.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          '4'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const LogoAuth(),
              Text(
                '2'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  '3'.tr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 100, 'email');
                },
                myController: controller.email,
                hintText: '5'.tr,
                labelText: 'Email',
                iconData: Icons.email_outlined,
                isNumber: false,
                //myController: null,
              ),
              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 30, 'password');
                },
                myController: controller.password,
                hintText: '6'.tr,
                labelText: 'Password',
                iconData: Icons.lock_outline,
                isNumber: false,
                //myController: null,
              ),
              InkWell(
                onTap: (){
                  controller.goToForgetPassword();
                },
                child: Text(
                  '7'.tr,
                  textAlign: TextAlign.end,
                ),
              ),
              CustomButtonAuth(
                text: 'Login',
                onPressed: ()
                {
                  controller.login();
                },
              ),
              const SizedBox(
                height: 20,
              ),

              CustomTextSignUpOrSignIn(
                textOne: '8'.tr,
                textTwo: '9'.tr,
                onTap: (){
                  controller.goToSignUp();
                },
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}
