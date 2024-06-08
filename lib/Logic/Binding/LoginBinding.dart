import'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/LoginController.dart';




class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }}