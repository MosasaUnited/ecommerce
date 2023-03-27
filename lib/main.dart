import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/changelocal.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColor.black,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: AppColor.black,
          ),
          bodyLarge: TextStyle(
            height: 2,
            fontSize: 17,
            color: AppColor.grey,
            fontWeight: FontWeight.w300,
          ),
          bodyMedium: TextStyle(
            height: 2,
            fontSize: 13,
            color: AppColor.grey,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home:
       const Language(),
      // const Language(),
      routes: routes,
    );
  }
}
