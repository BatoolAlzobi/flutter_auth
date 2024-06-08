import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Classes/AppColor.dart';
import 'package:proflutter1/Logic/Controller/RegesterController.dart';

class CustomTextFormAuth extends StatelessWidget{

  final String Hint_Text;
  final String Label_Text;
  final String Font_Family;
  final IconData? iconData;
  final Color Hint_Style_Color;
  final Color Back_Field;
  final Color Border_Field;
  final TextEditingController mycontrller;
  final FormFieldValidator<String> validate;
  final  Function()? onPressed;
  final bool obscureText;
  final TextInputType?KeybordType;

  const CustomTextFormAuth({
    Key? key,

    required this.Hint_Text,
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
    AppColor appColor= new AppColor();
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 30, right: 30),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Back_Field,
          border: Border.all(
            color: Border_Field,
            width: 1,
          ),

          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child:TextFormField(
          keyboardType: KeybordType??null,
           obscureText:obscureText,
              validator: validate,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: mycontrller,
              decoration: InputDecoration(
              hintText: Hint_Text,
              suffixIcon: IconButton(
                icon: Icon(iconData ?? null, color:  appColor.lebelcolor,),
              onPressed:
              onPressed??null,
            ),
            hintStyle: TextStyle(color: Hint_Style_Color, fontFamily: Font_Family,),
            contentPadding: EdgeInsets.all(12),
            border: InputBorder.none,
          ),

      ),
    ),);
  }
}
