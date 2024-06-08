import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Auth/CustomTextFormAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Logic/Controller/ForgetPasswordController.dart';
import 'package:proflutter1/Routes/rourte.dart';

class ForgetPassword extends GetView<ForgetPasswordController> {
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
                  Text(
                    "Check Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Form(key: controller.ForgetKey,
                    child:
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
                  ),),
                  GestureDetector(
                    onTap: () {
                      bool f = controller.ForgetKey.currentState!.validate();
                      if (f) {
                         controller.Check_Email_with_DB();
                          Get.offAllNamed(Routes.Verification);
                    }
                    },
                    child: CustomButtonAuth(
                        Text_: "Check",
                        Back_Field: appColor.colorfull,
                        Font_Family: 'Montaga-Regular',
                        Color_Border: appColor.Borders,
                        Text_Color: appColor.colorcamera,
                        left_: 25,
                        right_: 25,
                        Top_: 60.0),
                  ),
                ]))));
  }
}
