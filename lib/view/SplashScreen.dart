import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/SplashController.dart';


class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return
         Scaffold(
            body:  GetBuilder<SplashController>(
            init:SplashController(),
              builder: (Controller) =>
                  Container(child:
                    Center(
                      child: Container(
                         decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:  AssetImage("images/splash.png"))

                         ),

                    ),
                  ))
            )

          );

  }
}



