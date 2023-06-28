import 'package:ecommerce/controller/test_controller.dart';
import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: GetBuilder<TestController>(
        builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
            return const Center(child: Text('Loading'));
          } else if (controller.statusRequest == StatusRequest.offlineFailure) {
            return const Center(
                child: Text('Offline Failure')); // When WiFi is Off
          } else if (controller.statusRequest == StatusRequest.serverFailure) {
            return const Center(
                child: Text(
                    'Server Failure')); // When Link is Wrong or Server Busy
          } else {
            return ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text('${controller.data}');
                });
          }
        },
      ),
    );
  }
}
