import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

class ForgetPasswordController extends GetxController{
  late TextEditingController emailController;
  final ForgetKey = GlobalKey<FormState>();

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  void dispose() {
    emailController.dispose();
    super.dispose();
  }

 bool Check_Email_with_DB(){

    return true;

 }



}
