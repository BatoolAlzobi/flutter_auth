import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:get/get.dart';

class ErrorDialog extends StatelessWidget {
  AppColor appColor = new AppColor();

  @override
  Widget build(BuildContext context) {
    return
       Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Oh no!',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montaga-Regular',
                                ),
                              ),
                              const Text(
                                'Something went wrong',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Montaga-Regular',
                                ),
                              ),
                              const Text(
                                'Please try again!',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Montaga-Regular',
                                ),
                              ),
                              SizedBox(height: 10.0),
                              InkWell(
                                onTap: (){Get.back();},
                                child: CustomButtonAuth(
                                  Text_: 'Try again',
                                  Back_Field: appColor.Try,
                                  Font_Family: 'Montaga-Regular',
                                  Color_Border: appColor.Try,
                                  Text_Color: Colors.white,
                                  left_: 80,
                                  right_: 80,
                                    Top_:60.0

                                ),
                              ),



            ]));
  }
}
