import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/forgetpassword/verifycode_controller.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtitleauth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          'Verification Code',
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
            const CustomTitleAuth(
              text: 'Check Code',
            ),
            const SizedBox(
              height: 10,
            ),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every text-field is filled
              onSubmit: (String verificationCode) {
                controller.goToResetPassword(verificationCode);
              }, // end onSubmit
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonAuth(
              text: 'Check',
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
