import 'package:ecommerce/linkapi.dart';

import '../../../../core/class/crud.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);

  postdata(String password, String email) async {
    var response = await crud.postData(AppLink.login, {
      "email": email,
      "password": password,
    });

    return response.fold((l) => l, (r) => r);
  }
}
