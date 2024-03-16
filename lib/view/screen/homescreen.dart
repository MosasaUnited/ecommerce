import 'package:ecommerce/controller/screencontroller.dart';
import 'package:ecommerce/view/widget/home/custombuttonappbar.dart';
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
                      CustomButtonAppBar(
                          textButton: 'Home',
                          iconData: Icons.home_outlined,
                          onPressed: () {
                            controller.changePage(0);
                          },
                          active: controller.currentPage == 0 ? true : false),
                      CustomButtonAppBar(
                          textButton: 'Settings',
                          iconData: Icons.settings_outlined,
                          onPressed: () {
                            controller.changePage(1);
                          },
                          active: controller.currentPage == 1 ? true : false),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CustomButtonAppBar(
                          textButton: 'Favourite',
                          iconData: Icons.favorite_outline_outlined,
                          onPressed: () {
                            controller.changePage(2);
                          },
                          active: controller.currentPage == 2 ? true : false),
                      CustomButtonAppBar(
                          textButton: 'Profile',
                          iconData: Icons.person_outlined,
                          onPressed: () {
                            controller.changePage(3);
                          },
                          active: controller.currentPage == 3 ? true : false),
                    ],
                  ),
                ],
              ),
            ),
            body: controller.listPage.elementAt(controller.currentPage)));
  }
}
