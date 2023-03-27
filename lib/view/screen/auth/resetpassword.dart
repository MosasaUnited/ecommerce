import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/forgetpassword_controller.dart';
import '../../../controller/auth/resetpasswoed_controller.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          '14'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomTitleAuth(text: 'New Password',),
            const SizedBox(
              height: 20,
            ),
            const CustomTextBodyAuth(text: 'Please Enter new Password',),
            CustomTextFormAuth(
              myController: controller.password,
              hintText: '6'.tr,
              labelText: 'Password',
              iconData: Icons.phone_android_outlined,
              //myController: null,
            ),
            CustomTextFormAuth(
              myController: controller.repassword,
              hintText: '15'.tr,
              labelText: 'Re-Enter Password',
              iconData: Icons.lock_outline,
              //myController: null,
            ),
            CustomButtonAuth(
              text: 'Save',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
