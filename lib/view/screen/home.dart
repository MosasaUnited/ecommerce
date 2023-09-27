import 'package:ecommerce/controller/home_contoller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/home/custom_appbar.dart';
import '../widget/home/custom_card_home.dart';
import '../widget/home/custom_title_home.dart';
import '../widget/home/list_categories.dart';
import '../widget/home/list_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  CustomAppBar(
                      titleappbar: 'Find Product',
                      onPressedIcon: () {},
                      onPressedSearch: () {}),
                  const CustomCardHome(
                    title: 'Summer Surprise',
                    body: 'Cashback 20%',
                  ),
                  const CustomTitleHome(
                    title: 'Categories',
                  ),
                  const ListCategoriesHome(),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTitleHome(
                    title: 'Product for You',
                  ),
                  const ListItems(),
                ],
              ),
            )));
  }
}
