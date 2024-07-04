import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proflutter1/Dialog/SuccessDialog.dart';
import 'package:proflutter1/Model/UserLogin.dart';
import 'package:get/get.dart';
import 'package:proflutter1/Model/verifyModel.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class AuthServices {

  static int isverfy=0;
  static  int magic=0;


  static login({required email, required password,required phone_number}) async {
    final storage = const FlutterSecureStorage();

    var response = await http.post(Uri.parse('https://task5-riham-esmail.trainees-mad-s.com/api/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(<String, dynamic>{
          "phone_number": phone_number,
          "email": email,
          "password": password,
        }));
    if (response.statusCode == 200||response.statusCode == 201) {
         var stringObject = response.body;
         var user = AuthResponseFromJson(stringObject);
         await storage.write(key: "Token", value:user.accessToken);
          Get.offAllNamed(Routes.HomePage);
             return user;
    }
    else
      {
        magic=1;
      return null;}
  }


  static Verefy({required email,required code}) async {
    final storage = const FlutterSecureStorage();

    var response = await http.post(Uri.parse('https://task5-riham-esmail.trainees-mad-s.com/api/auth/verify-email'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(<String, dynamic>{
          "email": email,
          "code": code,
        }));
    print(response.statusCode);
    if (response.statusCode == 200||response.statusCode == 201) {
      var stringObject = response.body;
      print(stringObject);
      var user = AuthResponseVerfyFromJson(stringObject);
      print("access token is:");
      print(user.accessToken);
      await storage.write(key: "accessToken", value:user.accessToken);
      Get.bottomSheet(SuccessDialog());


      return user;
    }else{
      isverfy=1;
      return null;}
  }



  static logout( {required var accessToken}) async {
    final storage = const FlutterSecureStorage();
   print( await storage.read(key: "Token"));

    final response = await http.get(Uri.parse('https://task5-riham-esmail.trainees-mad-s.com/api/auth/logout'),
     headers : {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    },);


    if (response.statusCode == 200 || response.statusCode == 201) {
      print('Logout successful');

    } else {
      print('Error during logout: ${response.statusCode}');
    }
  }


  static resend({required email}) async {
    var response = await http.post(Uri.parse(
        'https://task5-riham-esmail.trainees-mad-s.com/api/auth/resend'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(<String, dynamic>{
          "email":email,
        }));
    if (response.statusCode == 200||response.statusCode == 201) {
      var stringObject = response.body;
      print(stringObject);
      return "";
    }else
      return null;
  }










}
