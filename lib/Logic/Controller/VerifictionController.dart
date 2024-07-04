
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:proflutter1/Dialog/SuccessDialog.dart';
import 'package:proflutter1/Services_Api/auth_services.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class VerificationController extends GetxController {

  final storage = const FlutterSecureStorage();

  late TextEditingController code1, code2,  code3,code4,code5,code6;


  dovery () async {


    var data = await AuthServices.Verefy(
      email: await storage.read(key: 'email'),
      code: code1.text+code2.text+code3.text+code4.text+code5.text+code6.text);

    print("==================================================");
    print(data.toString());

    print (await storage.read(key: 'email'),);
    print (await storage.read(key: 'accessToken'),);


    print("==================================================");


  }
  resend () async {


    var data = await AuthServices.resend(
      email: await storage.read(key: 'email'),
        );

    print("==================================================");
    print(data.toString());
    print (await storage.read(key: 'email'),);
    print (await storage.read(key: 'accessToken'),);


    print("==================================================");




  }







  @override
  void onInit() async {
    code1 = TextEditingController();
    code2 = TextEditingController();
    code3= TextEditingController();
    code4= TextEditingController();
    code5= TextEditingController();
    code6= TextEditingController();
    super.onInit();

    startTimer(180);


  }


  Timer? _timer;
  int remainingSeconds = 0;
  final time = '00:00'.obs;

  void startTimer(int seconds) {
    remainingSeconds = seconds;
    _timer = Timer.periodic(Duration(seconds: 1), (_) => _setCountdown());
  }

  void stopTimer() {
    _timer?.cancel();
    time.value="00.00";
    update();

  }



  void _setCountdown() {
    if (remainingSeconds==00) {
      remainingSeconds%60;

      stopTimer();
    } else {
      final minutes = remainingSeconds ~/ 60;
      final seconds = remainingSeconds % 60;
      time.value = '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
      remainingSeconds--;
    }
  }



}
