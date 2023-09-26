import 'package:ecommerce/controller/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/model/items_model.dart';
import '../../../linkapi.dart';

class ListItems extends GetView<HomeControllerImp> {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return ItemsHome(
                itemsModel: ItemsModel.fromJson(controller.items[i]));
          }),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Image.network(
            '${AppLink.imagesItems}/${itemsModel.itemsImage}',
            height: 100,
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColor.black.withOpacity(.3),
              borderRadius: BorderRadius.circular(20)),
          height: 120,
          width: 200,
        ),
        Positioned(
          left: 10,
          child: Text(
            '${itemsModel.itemsName}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        )
      ],
    );
  }
}
