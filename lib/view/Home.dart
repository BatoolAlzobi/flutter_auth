import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/HomeController.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:proflutter1/Dialog/LogoutDialog.dart';
class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (Controller) =>


                    Center(
                      child: ElevatedButton(onPressed:(){//
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.noHeader,
                          animType: AnimType.rightSlide,
                           body: LogoutDialog(),
                             ).show();}
                          , child: Text("logout")),

                )));
  }
}
