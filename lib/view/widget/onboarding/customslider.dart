import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(onBoardingList[i].title!, style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(
            height: 50,
          ),
          Image.asset(onBoardingList[i].image!,
              width: 220,
              height: 220,
              fit: BoxFit.cover),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(onBoardingList[i].body!, textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),);
  }
}
