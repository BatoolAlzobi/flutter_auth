import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Logic/Controller/HomeController.dart';

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
            builder: (Controller) => Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 10,
                    )),
                  ],
                )));
  }
}
