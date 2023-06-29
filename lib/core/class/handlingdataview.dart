import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            heightFactor: 250,
            widthFactor: 250,
            child: Lottie.asset(AppImageAsset.loading),
          )
        : statusRequest == StatusRequest.offlineFailure
            ? Center(
                heightFactor: 250,
                widthFactor: 250,
                child: Lottie.asset(AppImageAsset.offline))
            : statusRequest == StatusRequest.serverFailure
                ? Center(
                    heightFactor: 250,
                    widthFactor: 250,
                    child: Lottie.asset(AppImageAsset.serverError))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        heightFactor: 250,
                        widthFactor: 250,
                        child: Lottie.asset(AppImageAsset.noData))
                    : widget;
  }
}
