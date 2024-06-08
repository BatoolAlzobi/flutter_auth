
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';
import 'package:mailer/smtp_server.dart';

import 'package:email_otp/email_otp.dart';



class VerificationController extends GetxController {

  @override
  void onInit() async {
    startTimer(60);
   final myAuth = EmailOTP();

// Sending OTP
    await myAuth.sendOTP();
    await sendOtp();

    super.onInit();
  }

// Initialize the class
  final emailAuth = EmailAuth(sessionName: "Sample session");

// Sending an OTP
   sendOtp() async {
    bool result = await emailAuth.sendOtp(recipientMail: "faizzoubi200@gmail.com", otpLength: 5);
    print(result);
  }

// Validating an OTP
//   bool verify() {
//     return emailAuth.validateOtp(recipientMail: _emailController.value.text, userOtp: _otpController.value.text);
//   }




















  Timer? _timer;
  int remainingSeconds = 0;
  final time = '00:00'.obs;

  void startTimer(int seconds) {
    remainingSeconds = seconds;
    _timer = Timer.periodic(Duration(seconds: 1), (_) => _setCountdown());
  }

  void stopTimer() {
    _timer?.cancel();
    update();

  }

  void resetTimer() {
    stopTimer();
    remainingSeconds = 0;
    time.value = '00:00';
    update();
  }

  void _setCountdown() {
    if (remainingSeconds == 0) {
      stopTimer();
    } else {
      final minutes = remainingSeconds ~/ 60;
      final seconds = remainingSeconds % 60;
      time.value = '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
      remainingSeconds--;
    }
  }

 // void SendOtp() async{
 //    EmailAuth.sessionName="test";
 //    var res =await EmailAuth.s
 // }


// Future<void> sendVerificationEmail(String recipientEmail, String otp) async {
//   final smtpServer =
//    SmtpServer('your_smtp_server',
//                 username: 'your_username', password: 'your_password');
//
//   final message = Message()
//     ..from = Address('your_email@example.com', 'Your App')
//     ..recipients.add(recipientEmail)
//     ..subject = 'Verification Code'
//     ..text = 'Your verification code is: $otp';
//
//   try {
//     final sendReport = await send(message, smtpServer);
//     print('Message sent: ${sendReport.toString()}');
//   } catch (e) {
//     print('Error sending email: $e');
//   }
// }


}
