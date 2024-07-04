import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Logic/Binding/Init_Binding.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:awesome_dialog/awesome_dialog.dart';




void main() {
  runApp( DevicePreview(builder : (context)=> MyApp()));
}

class MyApp extends StatelessWidget {

  // AppColor appColor= new AppColor();

  static String api = "http://192.168.1.102:8000" ;
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(360, 690), // Set your design size
        builder: (context, child) {
          return GetMaterialApp(
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.Splash,
              getPages: AppPages.routes,
              initialBinding: Initial_Binding());
        });

  }
}



