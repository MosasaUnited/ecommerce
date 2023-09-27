import 'package:ecommerce/controller/screencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.shopping_basket_outlined),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 10,
              child: Row(
                children: [
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          controller.changePage(0);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [Icon(Icons.home), Text('Home')],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          controller.changePage(1);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [Icon(Icons.settings), Text('Settings')],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          controller.changePage(2);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star_border_outlined),
                            Text('Favourite')
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          controller.changePage(3);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.person_2_outlined),
                            Text('Profile')
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: controller.listPage.elementAt(controller.currentPage)));
  }
}
