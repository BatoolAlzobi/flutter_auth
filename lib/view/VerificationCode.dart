import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Dialog/ErrorDialog.dart';
import 'package:proflutter1/Dialog/SuccessDialog.dart';
import 'package:proflutter1/Logic/Controller/VerifictionController.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'package:proflutter1/Services_Api/auth_services.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class VerificationCode extends GetView<VerificationController> {
  AppColor appColor = new AppColor();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                Expanded(
                  child: ListView(
                    children: [
                      Center(
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10.0,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5,
                              ),
                              child: Container(
                                width: 45,
                                height: 45,
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
                                child: TextField(
                                  controller: controller.code1,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Container(
                                width: 45,
                                height: 45,
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
                                child: TextField(
                                  controller: controller.code2,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Container(
                                width: 45,
                                height: 45,
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
                                child: TextField(
                                  controller: controller.code3,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
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
                                child: TextField(
                                  controller: controller.code4,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Container(
                                width: 45,
                                height: 45,
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
                                child: TextField(
                                  controller: controller.code5,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Container(
                                width: 45,
                                height: 45,
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
                                child: TextField(
                                  controller: controller.code6,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Obx(
                              () => Text(
                                '${controller.time.value}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: appColor.colorcamera,
                                  fontFamily: "Montaga-Regular",
                                ),
                              ),
                            )
                            //  ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                Get.offAllNamed(Routes.Verification);
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
                        onTap: () async {
                          AuthServices.isverfy = 0;
                          await controller.dovery();
                          if (AuthServices.isverfy == 1) {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.noHeader,
                              animType: AnimType.rightSlide,
                              body: ErrorDialog(),
                            ).show();
                          }
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
                              right_: 25,
                              Top_: 60.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
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
