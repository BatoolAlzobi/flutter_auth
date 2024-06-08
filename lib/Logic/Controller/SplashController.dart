import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/RegesterController.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:proflutter1/view/Home.dart';
import 'package:proflutter1/view/RegesterView.dart';




class SplashController extends GetxController {

  RegesterController controller_=Get.put(RegesterController());

  var loading = true.obs;
  final storage = const FlutterSecureStorage();



  Future clerestorage()async{
    await(storage.deleteAll());
  }



   Future<void> isAuth() async {
     var email= await (storage.read(key: 'email'));

     Timer(
         Duration(seconds: 3),
             () {


               if (email.isNull)
                 Get.offAllNamed(Routes.Regester);
                else
                 Get.offAllNamed(Routes.HomePage);



  });}


  @override
  void onInit() async{


    await clerestorage();//لكي لا تظهر في كل مره صفحه تسجيل الدخول وينتقل فورا لل هوم بيج لكن هنا بقيت للتجريب في الصفحات لا اكثر
    //await clerestorage();
    splash();
    super.onInit();
  }

  splash() async {

    try {
      loading.value = true;
      await isAuth();
    } finally {
      loading.value = false;
    }
    update();
  }
}
