import 'package:ecommerce/linkapi.dart';

import '../../../../core/class/crud.dart';

class CheckMailData {
  Crud crud;

  CheckMailData(this.crud);

  postdata(String email) async {
    var response = await crud.postData(AppLink.checkEmail, {
      "email": email,
    });

    return response.fold((l) => l, (r) => r);
  }
}
