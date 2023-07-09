import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../controller/forgetpassword/forgetpassword_controller.dart';
import '../../../../core/class/statusrequest.dart';
import '../../../../core/constant/image_asset.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextformauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          '7'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) => controller.statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Lottie.asset(
                  AppImageAsset.dotsLoading,
                  height: 150,
                  repeat: true,
                ),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      CustomTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 5, 55, 'email');
                        },
                        myController: controller.email,
                        hintText: '5'.tr,
                        labelText: 'Email',
                        iconData: Icons.email_outlined,
                        isNumber: false,
                        //myController: null,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButtonAuth(
                        text: 'Check',
                        onPressed: () {
                          controller.checkEmail();
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
    );
  }
}
