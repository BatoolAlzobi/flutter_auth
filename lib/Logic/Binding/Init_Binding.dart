import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/HomeController.dart';
import 'package:proflutter1/Logic/Controller/LoginController.dart';
import 'package:proflutter1/Logic/Controller/RegesterController.dart';
import 'package:proflutter1/Logic/Controller/SplashController.dart';


class Initial_Binding extends  Bindings{
  @override
  void dependencies() {
     Get.put<SplashController>(SplashController()) ;
   // Get.put<HomeController>(HomeController()) ;

    Get.put<LoginController>(LoginController()) ;
     Get.put<RegesterController>(RegesterController()) ;

  }

}