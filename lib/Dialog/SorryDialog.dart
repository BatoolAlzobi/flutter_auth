import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:proflutter1/Auth/CustomButtonAuth.dart';
import 'package:proflutter1/Classes/AppColor.dart';

class SorryDialog extends StatelessWidget {
  AppColor appColor = new AppColor();
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
              Image(image:new AssetImage("images/Sorry.PNG"),height: 80,),
              const Text(" Sorry!",

                style: TextStyle(
                  color: Color.fromRGBO(3, 80, 20, 1),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montaga-Regular',
                ),
              ),
              SizedBox(height: 10),
              const Text(
                'Incorrect password or email ',
                style: TextStyle(
                  color: Color.fromRGBO(3, 80, 20, 1),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montaga-Regular',
                ),
              ),

              SizedBox(height: 20),






            ])); ;

  }
}
