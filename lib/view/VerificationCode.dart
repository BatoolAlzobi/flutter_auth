import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Dialog/SuccessDialog.dart';
import 'package:proflutter1/Logic/Controller/VerifictionController.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';

class VerificationCode extends GetView<VerificationController> {
  AppColor appColor = new AppColor();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  height: 130,
                  child: Center(
                    child: Image.asset('images/Splash_zoom.png'),
                  ),
                ),
              ),
              Text(
                "Verification Code",
                style: TextStyle(
                  fontFamily: "Montaga-Regular",
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: appColor.colorcamera,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "We have sent the verification code to your email address",
                style: TextStyle(
                  fontFamily: "Montaga-Regular",
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Obx(() => Expanded(
                    flex: 1,
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                              height: 65,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          border: GradientBoxBorder(
                                            gradient: LinearGradient(colors: [
                                              appColor.lebelcolor,
                                              appColor.suc1,
                                              appColor.colorcamera
                                            ]),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0))),
                                      child: const TextField(
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: 6,
                              ),
                            )),
                          ],
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '${controller.time.value}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: appColor.colorcamera,
                                  fontFamily: "Montaga-Regular",
                                ),
                              )
                              //  ),

                              // ElevatedButton(
                              //   onPressed: () => controller.startTimer(300),
                              //   child: Text('Start Timer'),
                              // ),
                              // ElevatedButton(
                              //   onPressed: controller.stopTimer,
                              //   child: Text('Stop Timer'),
                              // ),
                              // ElevatedButton(
                              //   onPressed: controller.resetTimer,
                              //   child: Text('Reset Timer'),
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {
                                  //  print(controller.time.value);

                                  controller.startTimer(60);

                                  //  print(controller.time.value);
                                },
                                child: Text(
                                  "Send again",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Montaga-Regular",
                                      color: appColor.colorcamera,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.bottomSheet(SuccessDialog());
                          },
                          child: Align(
                            alignment: Alignment.bottomCenter,

                              child: CustomButtonAuth(



                                  Text_: 'Confirm',
                                  Back_Field: appColor.colorfull.withOpacity(0.3),
                                  Font_Family: 'Montaga-Regular',
                                  Color_Border: appColor.lebelcolor,
                                  Text_Color: appColor.colorcamera,
                                  left_: 25,
                                  right_: 25,                        Top_:60.0
                              ),
                            ),
                          ),



                      ],
                    ),
                  )),
            ])),
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(String hex) : super(_getColorFromHex(hex));

  static int _getColorFromHex(String hex) {
    final hexWithoutHash = hex.replaceAll('#', '');
    return int.parse('FF$hexWithoutHash', radix: 16);
  }
}

