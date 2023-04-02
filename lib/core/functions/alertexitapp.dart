import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp(){
  Get.defaultDialog(
    title: '18'.tr,
    middleText: '19'.tr,
    actions: [
      ElevatedButton(onPressed: ()
      {
        exit(0);
      }, child: Text('20'.tr)),
      ElevatedButton(onPressed: ()
      {
        Get.back();
      }, child: Text('21'.tr)),
    ]
  );
  return Future.value(true);
}