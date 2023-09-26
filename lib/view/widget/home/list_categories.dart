import 'package:ecommerce/controller/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../core/constant/color.dart';
import '../../../data/model/categories_model.dart';
import '../../../linkapi.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Categories(
              categoriesModel:
                  CategoriesModel.fromJson(controller.categories[index]),
            );
          }),
    );
  }
}

class Categories extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const Categories({super.key, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColor.thirdColor,
              borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 100,
          width: 100,
          child: SvgPicture.network(
            "${AppLink.imagesCategories}/${categoriesModel.categoriesImage}",
          ),
        ),
        Text(
          '${categoriesModel.categoriesName}',
          style: const TextStyle(
              fontSize: 15, color: AppColor.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
