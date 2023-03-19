import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/logoauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
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
              hintText: '5'.tr,
              labelText: 'Email',
              iconData: Icons.email_outlined,
              //myController: null,
            ),
            CustomTextFormAuth(
              hintText: '6'.tr,
              labelText: 'Password',
              iconData: Icons.lock_outline,
              //myController: null,
            ),
            Text(
              '7'.tr,
              textAlign: TextAlign.end,
            ),
            CustomButtonAuth(
              text: 'Login',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('8'.tr),
                InkWell(
                  child: Text(
                    '9'.tr,
                    style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
