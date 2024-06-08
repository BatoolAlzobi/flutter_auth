import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Dialog/ErrorDialog.dart';
import 'package:proflutter1/Auth/CustomTextFormAuth.dart';
import 'package:proflutter1/Dialog/SorryDialog.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Logic/Controller/LoginController.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    AppColor appColor = new AppColor();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(),
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
                  Expanded(
                    flex: 1,
                    child: Form(
                      key: controller.loginFormkey,
                      child: ListView(children: [
                        CustomTextFormAuth(
                          Hint_Text: 'email',
                          Label_Text: '',
                          Font_Family: 'Cabin',
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
                          Font_Family: 'Cabina-Regular',
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
                        CustomTextFormAuth(
                          Hint_Text: 'password',
                          Label_Text: '',
                          Font_Family: 'Carioa-Regular',
                          Hint_Style_Color: appColor.lebelcolor,
                          Back_Field: appColor.back,
                          Border_Field: appColor.borderfeild,
                          mycontrller: controller.passwordController,
                          validate: (value) {
                            if (value == null || value.isEmpty) {
                              return "This field is required";
                            }
                            return null;
                          },
                          obscureText: false,
                        ),
                        GestureDetector(
                          onTap: () {
                            // if data was true =>
                            // bool f = controller.loginFormkey.currentState!.validate();
                            //
                            // if (f) {
                            //   await controller.doLogin();
                            //   Get.offAllNamed(Routes.HomePage);
                            //else =>show this dialog

                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.noHeader,
                              animType: AnimType.rightSlide,
                              body: SorryDialog(),
                            ).show();
                          },
                          child: CustomButtonAuth(
                              Text_: "Log in",
                              Back_Field: appColor.colorfull,
                              Font_Family: 'Montaga-Regular',
                              Color_Border: appColor.Borders,
                              Text_Color: appColor.colorcamera,
                              left_: 25,
                              right_: 25,
                              Top_: 60.0),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    size: 14,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.error,
                                          animType: AnimType.rightSlide,
                                          body: ErrorDialog(),
                                        ).show();
                                      },
                                      child: Text(
                                        "Remember me",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Montaga-Regular",
                                            color: appColor.colorcamera),
                                      )),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: TextButton(
                                  onPressed: () {
                                    Get.offAllNamed(Routes.ForgetPassword);
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Cabin-Regular",
                                        color: appColor.colorcamera),
                                  )),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(Routes.Regester);
                          },
                          child: CustomButtonAuth(
                              Text_: 'Create new account',
                              Back_Field: appColor.colorfull.withOpacity(0.3),
                              Font_Family: 'Montaga-Regular',
                              Color_Border: appColor.lebelcolor,
                              Text_Color: appColor.colorcamera,
                              left_: 25,
                              right_: 25,
                              Top_: 60.0),
                        ),
                      ]),
                    ),
                  ),
                ]))));
  }
}
