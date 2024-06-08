
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String Text_;
  final double left_;
  final double Top_;
  final double right_;
  final Color Back_Field;
  final String Font_Family;
  final Color Color_Border;
  final Color Text_Color;

  const CustomButtonAuth({
    Key? key,
    required this.Text_,
    required this.Back_Field,
    required this.Font_Family,
    required this.Color_Border,
    required this.Text_Color,
    required this.left_,
    required this.right_,
    required this.Top_,


  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding:
        EdgeInsets.only(top: Top_, left: left_, right: right_),
        child: Container(
            height: 38,
            width: 400,
            decoration: BoxDecoration(
              color: Back_Field,
              border: Border.all(
                color:  Color_Border,
                width: 1,
              ),
              borderRadius:
              BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Center(
              child: Text(
                Text_,
                style: TextStyle(
                    color:  Text_Color,
                    fontFamily: Font_Family,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            )),
      ),
    );
  }
}
