import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'package:proflutter1/Services_Api/auth_services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LogoutDialog extends StatelessWidget {
  AppColor appColor = new AppColor();
  final storage = const FlutterSecureStorage();

  // Text("Oh no! You’re leaving...Are you sure?")
  @override
  Widget build(BuildContext context) {
    return   Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.only(right: 16.0,left: 16.0,bottom: 16.0),
        child: Column(
         //   mainAxisSize: MainAxisSize.min,
            children: [
              Image(image:new AssetImage("images/Logout.png"),height: 80,),
              const Text(" Oh no! You’re leaving...",

              style: TextStyle(
                  color: Color.fromRGBO(3, 80, 20, 1),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montaga-Regular',
                ),
              ),
              const Text(
                'Are you sure?',
                style: TextStyle(
                  color: Color.fromRGBO(3, 80, 20, 1),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montaga-Regular',
                ),
              ),
              //SizedBox(height: 5.0),
              InkWell(
                onTap: (){
                  Get.back();
               //   Navigator.of(context).pop(); // Close the dialog

                },

                child: CustomButtonAuth(
                  Text_: 'No',
                  Back_Field: appColor.colorfull,
                  Font_Family: 'Montaga-Regular',
                  Color_Border: appColor.colorfull,
                  Text_Color: appColor.colorcamera,
                  left_: 80,
                  right_: 80,
                    Top_:20.0

                ),
              ),

            //  SizedBox(height: 5.0),
              InkWell(
                onTap: () async   {

                  var token =await storage.read(key:'Token' );
                  await  AuthServices.logout(
                        accessToken: token,
                  );

                  Get.offAllNamed(Routes.Login);
                  },


                child: CustomButtonAuth(
                  Text_: 'Yes,Log Me out',
                  Back_Field: appColor.colorfull,
                  Font_Family: 'Montaga-Regular',
                  Color_Border: appColor.colorfull,
                  Text_Color: appColor.colorcamera,
                  left_: 70,
                  right_: 70,
                  Top_:20.0
                ),
              ),



            ])); ;

  }
}
