import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          '9'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  '12'.tr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 30, 'username');
                },
                myController: controller.username,
                hintText: '10'.tr,
                labelText: 'User Name',
                iconData: Icons.person_2_outlined,
                //myController: null,
              ),
              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 100, 'email');
                },
                myController: controller.email,
                hintText: '5'.tr,
                labelText: 'Email',
                iconData: Icons.email_outlined,
                //myController: null,
              ),
              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 15, 'phone');
                },
                myController: controller.phone,
                hintText: '11'.tr,
                labelText: 'Phone',
                iconData: Icons.phone_android_outlined,
                //myController: null,
              ),
              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 12, 'password');
                },
                myController: controller.password,
                hintText: '6'.tr,
                labelText: 'Password',
                iconData: Icons.lock_outline,
                //myController: null,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButtonAuth(
                text: 'Register',
                onPressed: ()
                {
                  controller.signUp();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextSignUpOrSignIn(
                  textOne: '13'.tr,
                  textTwo: '4'.tr,
                  onTap: (){
                    controller.goToSignIn();
                  },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
