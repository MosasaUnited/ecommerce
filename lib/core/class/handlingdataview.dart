import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:flutter/material.dart';

import '../constant/lottie_widgets.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const DotsLoading()
        : statusRequest == StatusRequest.offlineFailure
            ? const Offline()
            : statusRequest == StatusRequest.serverFailure
                ? const ServerError()
                : statusRequest == StatusRequest.failure
                    ? const NoData()
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const DotsLoading()
        : statusRequest == StatusRequest.offlineFailure
            ? const Offline()
            : statusRequest == StatusRequest.serverFailure
                ? const ServerError()
                : widget;
  }
}
