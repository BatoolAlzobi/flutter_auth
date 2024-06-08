import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/SplashController.dart';



class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }}