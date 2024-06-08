import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/ForgetPasswordController.dart';




class ForgetPasswrd_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>ForgetPasswordController());
  }}