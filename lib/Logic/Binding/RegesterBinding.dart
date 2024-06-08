import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/RegesterController.dart';




class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegesterController());
  }}