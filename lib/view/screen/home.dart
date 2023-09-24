import 'package:ecommerce/controller/home_contoller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../linkapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'Find Product',
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 60,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                size: 35,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 150,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: const ListTile(
                              title: Text(
                                'Summer Big Sale',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                'Cashback 20%',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -35,
                            right: -35,
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: AppColor.secondColor,
                                borderRadius: BorderRadius.circular(160),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 10,
                              ),
                          itemCount: controller.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColor.thirdColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 100,
                                  width: 100,
                                  child: SvgPicture.network(
                                    "${AppLink.imagesCategories}/${controller.categories[index]["categories_image"]}",
                                  ),
                                ),
                                Text(
                                  '${controller.categories[index]["categories_name"]}',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: AppColor.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Product for you',
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Image.asset(
                                    'assets/images/SurfacePro.png',
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
                                const Positioned(
                                  left: 10,
                                  child: Text(
                                    'Laptop Surface Go 2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ))),
    );
  }
}
