import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:proflutter1/Services_Api/auth_services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginController extends GetxController{

  final loginFormkey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController,  Mobile_NumberController;
  final storage = const FlutterSecureStorage();

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    Mobile_NumberController= TextEditingController();
    super.onInit();
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    Mobile_NumberController.dispose();
    super.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "this is wrong email";
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length <= 5) {
      return "this is wrong password";
    } else {
      return null;
    }
  }

  doLogin() async { 

    // To Call Api Login

    // var data = await AuthServices.login(
    //        email: emailController.text,
    //     password: passwordController.text,
    //     Mobile_Number: Mobile_NumberController.text);
    
      await storage.write(key: "email", value:emailController.text);
      await storage.write(key: "password", value:passwordController.text);
      await storage.write(key: "Mobile_Number", value:Mobile_NumberController.text);


    }


}
