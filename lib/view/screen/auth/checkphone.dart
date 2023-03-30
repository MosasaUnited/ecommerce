import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/checkphone_controller.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';


class CheckPhone extends StatelessWidget {
  const CheckPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckPhoneControllerImp controller = Get.put(CheckPhoneControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          '11'.tr,
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
            CustomTextFormAuth(
              valid: (val){},
              myController: controller.phone,
              hintText: '16'.tr,
              labelText: 'Phone',
              iconData: Icons.phone_android_outlined,
              //myController: null,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonAuth(
              text: 'Check',
              onPressed: ()
              {
                controller.goToVerifyCode();
              },
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
