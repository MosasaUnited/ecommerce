import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/forgetpassword/resetpasswoed_controller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());

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
        body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const CustomTitleAuth(
                      text: 'New Password',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextBodyAuth(
                      text: 'Please Enter new Password',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormAuth(
                      valid: (val) {
                        return validInput(val!, 4, 30, 'password');
                      },
                      myController: controller.password,
                      hintText: '6'.tr,
                      labelText: 'Password',
                      iconData: Icons.lock,
                      isNumber: false,
                      //myController,
                    ),
                    CustomTextFormAuth(
                      valid: (val) {
                        return validInput(val!, 4, 30, 'password');
                      },
                      myController: controller.repassword,
                      hintText: '15'.tr,
                      labelText: 'Re-Enter Password',
                      iconData: Icons.lock_outline,
                      isNumber: false,
                      //myController: null,
                    ),
                    CustomButtonAuth(
                      text: 'Save',
                      onPressed: () {
                        controller.goToSuccessResetPassword();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
