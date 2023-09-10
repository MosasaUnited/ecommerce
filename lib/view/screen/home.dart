import 'package:ecommerce/controller/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'Hello ${controller.username}',
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
