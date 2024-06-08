import'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/HomeController.dart';
import 'package:proflutter1/Logic/Controller/LoginController.dart';




class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }}