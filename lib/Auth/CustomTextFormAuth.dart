import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Logic/Controller/RegesterController.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String Label_Text;
  final String Font_Family;
  final IconData? iconData;
  final Color Hint_Style_Color;
  final Color Back_Field;
  final Color Border_Field;
  final TextEditingController mycontrller;
  final FormFieldValidator<String> validate;
  final Function()? onPressed;
  final bool obscureText;
  final TextInputType? KeybordType;

  const CustomTextFormAuth({
    Key? key,
    required this.Label_Text,
    required this.Font_Family,
    this.iconData,
    required this.Hint_Style_Color,
    required this.Back_Field,
    required this.Border_Field,
    required this.mycontrller,
    required this.validate,
    this.onPressed,
    required this.obscureText,
    this.KeybordType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColor appColor = new AppColor();
    return Padding(
      padding: EdgeInsets.only(top: 10.0, left: 30, right: 30),
      child: TextFormField(
          keyboardType: KeybordType ?? null,
          obscureText: obscureText,
          validator: validate,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: mycontrller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Back_Field,
            contentPadding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 20),
            border: OutlineInputBorder(),
            labelText: Label_Text,
            labelStyle: TextStyle(color: Hint_Style_Color, fontFamily: Font_Family,
          ),
            suffixIcon: IconButton(icon: Icon(iconData ?? null, color: appColor.lebelcolor,), onPressed: onPressed ?? null,),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              borderSide: BorderSide(color: Border_Field, width: 1),
            ),
            errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
            focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            borderSide: BorderSide(color: Border_Field, width: 1),
          ),
             ),
          style: TextStyle(height: 1.0),
      ),
    );
  }
}
