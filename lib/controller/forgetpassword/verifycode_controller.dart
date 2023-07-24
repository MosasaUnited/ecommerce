import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/verifycode.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/functions/handlingdata.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;

  StatusRequest statusRequest = StatusRequest.none;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();

    var response =
        await verifyCodeForgetPasswordData.postdata(email!, verifycode);
    print('===================== Controller $response ');
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        Get.offNamed(AppRoute.resetPassword, arguments: {'email': email});
      } else {
        Get.defaultDialog(
          title: 'Warning',
          middleText: 'Verify Code is not Correct',
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
