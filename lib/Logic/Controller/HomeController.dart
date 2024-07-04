
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final storage = const FlutterSecureStorage();
@override
  void onInit() async {

  print(await storage.read(key: "accessToken"));
  print(await storage.read(key: "email"));

  // TODO: implement onInit
    super.onInit();
  }

}