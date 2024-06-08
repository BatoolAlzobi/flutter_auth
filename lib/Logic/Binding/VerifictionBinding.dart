import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/VerifictionController.dart';



class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationController());
  }}

