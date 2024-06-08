//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Auth/CustomTextFormAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/RegesterController.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'package:proflutter1/view/Home.dart';
import 'package:proflutter1/view/LoginView.dart';

class RegesterView extends GetView<RegesterController> {
  bool _passwordInVisible = true;

  RegesterView({super.key}); //a boolean value
  AppColor appColor = new AppColor();
  RegesterController controller = Get.put(RegesterController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                appColor.backall2.withOpacity(0.05),
                appColor.backall1,
              ], // Light green to white
            ),
          ),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                height: 130,
                child: Center(
                  child: Image.asset('images/Splash_zoom.png'),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 49,
                backgroundColor: appColor.colorcamera,
                child: CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.white, // Button color
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: appColor.colorcamera,
                    size: 40,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Form(
                  key: controller.SigninFormkey,
                  child: ListView(children: [
                    CustomTextFormAuth(
                      Hint_Text: 'Username',
                      Label_Text: '',
                      Font_Family: 'Cabin-Regular',
                      Hint_Style_Color: appColor.lebelcolor,
                      Back_Field: appColor.back,
                      Border_Field: appColor.borderfeild,
                      mycontrller: controller.UsernameController,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      },
                      obscureText: false,
                    ),

                    //
                    CustomTextFormAuth(
                      Hint_Text: 'email',
                      Label_Text: '',
                      Font_Family: 'Cabin-Regular',
                      Hint_Style_Color: appColor.lebelcolor,
                      iconData: Icons.edit_calendar_outlined,
                      Back_Field: appColor.back,
                      Border_Field: appColor.borderfeild,
                      mycontrller: controller.emailController,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      },
                      obscureText: false,
                    ),

                    CustomTextFormAuth(
                      Hint_Text: 'Mobile Number',
                      Label_Text: '',
                      Font_Family: 'Cabin',
                      Hint_Style_Color: appColor.lebelcolor,
                      Back_Field: appColor.back,
                      Border_Field: appColor.borderfeild,
                      mycontrller: controller.Mobile_NumberController,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      KeybordType: TextInputType.number,

                    ),

                    Obx(
                      () => CustomTextFormAuth(
                        Hint_Text: 'password',
                        Label_Text: '',
                        Font_Family: 'Cario-Regular',
                        Hint_Style_Color: appColor.lebelcolor
                        //,iconData: Icons.visibility_off,
                        ,
                        iconData: controller.hidePassword.value == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                        Back_Field: appColor.back,
                        Border_Field: appColor.borderfeild,
                        mycontrller: controller.passwordController,
                          validate: (value) {
                            if (value == null || value.isEmpty) {
                              return "This field is required";
                            }
                            return null;


                        },
                        onPressed: () {
                          controller.hidePassword.toggle();
                        },
                        obscureText: controller.hidePassword.value,
                      ),
                    ),

                    Obx(
                      () => CustomTextFormAuth(
                        Hint_Text: 'Confirm Password',
                        Label_Text: '',
                        Font_Family: 'cabin-Regular',
                        Hint_Style_Color: appColor.lebelcolor,
                        iconData: controller.hideConfirmPassword.value == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                        Back_Field: appColor.back,
                        Border_Field: appColor.borderfeild,
                        mycontrller: controller.ConfirmpasswordController,
                        validate: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is required";
                          }
                          return null;
                        },
                        onPressed: () {
                          controller.hideConfirmPassword.toggle();
                        },
                        obscureText: controller.hideConfirmPassword.value,
                      ),
                    ),

                    Center(
                        child: Padding(
                            padding:
                                EdgeInsets.only(top: 40.0, left: 80, right: 80),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: appColor.back,
                                  border: Border.all(
                                    color: appColor.borderfeild,
                                    width: 1,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          "Certificate PDF file    ",
                                          style: TextStyle(
                                            color: appColor.lebelcolor,
                                            fontFamily: "Cabin",
                                          ),
                                        )),
                                    Icon(
                                      Icons.cloud_upload_outlined,
                                      color: appColor.lebelcolor,
                                    ),
                                  ],
                                )))),

                    GestureDetector(
                      onTap: () async {


                        bool f =
                            controller.SigninFormkey.currentState!.validate();
                        if (f) {
                          await controller.doRegister();
                          Get.offAllNamed(Routes.HomePage);
                        }
                      },
                      child: CustomButtonAuth(
                          Text_: "Sign Up",
                          Back_Field: appColor.colorfull,
                          Font_Family: 'Montaga-Regular',
                          Color_Border: appColor.Borders,
                          Text_Color: appColor.colorcamera,
                          left_: 25,
                          right_: 25,
                          Top_: 60.0),
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            fontSize: 15,
                            color: appColor.colorcamera,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Cabin-Regular",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.Login);
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 15,
                              color: appColor.log,
                              fontFamily: "Cabin-Regular",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )
                  ])),
            )
          ]),
        )));
  }
}
