class AppLink {
  static const String server =
      "https://mostafa1ecommerce.000webhostapp.com/e-commerce";

  static const String test = "$server/test.php";

  // -------------------------------- Auth --------------------------------

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodesignup = "$server/auth/verifycode.php";

// -------------------------------- Forget Password --------------------------------
  static const String checkEmail = "$server/forgetpassword/checkmail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeForgetPassword =
      "$server/forgetpassword/verifycodepassword.php";

  // Home

  static const String homepage = '$server/home.php';
}
