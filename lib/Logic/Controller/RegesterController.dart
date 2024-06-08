
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:proflutter1/Services_Api/auth_services.dart';


class RegesterController extends GetxController{

  final SigninFormkey = GlobalKey<FormState>();
  var hidePassword = true.obs;
  var hideConfirmPassword = true.obs;



  late TextEditingController
      UsernameController,
      emailController,
      passwordController,
      ConfirmpasswordController,
     Mobile_NumberController;




  final storage = const FlutterSecureStorage();
  String temp = '';

  @override
  void onInit() {
    UsernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    ConfirmpasswordController = TextEditingController();
    Mobile_NumberController = TextEditingController() ;
    super.onInit();
  }

  void dispose() {
    UsernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    ConfirmpasswordController.dispose();
    Mobile_NumberController.dispose();
    super.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'This Email is not valid';
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length == 0) {
      return " Required!";
    }
    if (value.length <= 8) {
      return "So short";
    }
    return null;

  }

  doRegister() async {

    //
    // var data = await AuthServices.regester(
    //     Username: UsernameController.text,
    //     email: emailController.text,
    //     password: passwordController.text,
    //   Mobile_number: Mobile_NumberController.text,
    // confirmpassword: ConfirmpasswordController.text);


    await storage.write(key: "Username", value:UsernameController.text);
    await storage.write(key: "email", value:emailController.text);
    await storage.write(key: "password", value:passwordController.text);
    await storage.write(key: "Mobile_Number", value:Mobile_NumberController.text);
    await storage.write(key: "confirm", value:ConfirmpasswordController.text);




  }
}
