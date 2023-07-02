import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/data/datasource/remote/auth/verifycodesignup.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/functions/handlingdata.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verifyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());

  String? email;

  StatusRequest? statusRequest;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verifyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();

    var response =
        await verifyCodeSignUpData.postdata(email!, verifyCodeSignUp);
    print('===================== Controller $response ');
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
          title: 'Warning',
          middleText: 'Phone Number or Email Already Exists',
        );
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
