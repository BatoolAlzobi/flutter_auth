import 'package:flutter/material.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Classes/GradientText.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:get/get.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:proflutter1/Dialog/LogoutDialog.dart';

class SuccessDialog extends StatelessWidget {
  AppColor appColor = new AppColor();
  // Text("Oh no! You’re leaving...Are you sure?")
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),

    Expanded(
    flex: 1,
    child: ListView(children: [


    Center(
      child: Container(

              decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(colors: [
                      appColor.lebelcolor,
                      appColor.suc1,
                      appColor.colorcamera
                    ]),
                    width: 4,
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(50.0))
                //.circular(50)
              ),
              child: Icon(
                Icons.check,
                color: appColor.lebelcolor,
                size: 50,
              ),
            ),
    ),
          Center(
            child: GradientText(
              'Success!',
              style: const TextStyle(fontSize: 30),
              gradient: LinearGradient(colors: [
                appColor.suc1,
                appColor.suc2,
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 30, right: 20, top: 10),
            child: Text(
              "Congratulations! You have been successfully authenticated",
              style: TextStyle(
                  color: appColor.dd,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cabin-Regular",
                  fontSize: 25),
            ),
          ),

          InkWell(
            onTap: (){
            //  Get.back();
              AwesomeDialog(
                context: context,
                dialogType: DialogType.noHeader,
                animType: AnimType.rightSlide,
                body: LogoutDialog(),
              ).show();
            },
            child: Center(
              child: CustomButtonAuth(
                  Text_: 'Continue',
                  Back_Field: appColor.suc1,
                  Font_Family: 'Montaga-Regular',
                  Color_Border: appColor.suc1,
                  Text_Color: appColor.colorcamera,
                  left_: 130,
                  right_: 130,
                  Top_:60.0
              ),
            ),
          ),])),
        ],
      ),
    );

  }
}
