import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proflutter1/Model/UserModel.dart';
import 'package:proflutter1/main.dart';

class AuthServices {

  static regester({required Username,required email,required password,required Mobile_number,required confirmpassword}) async {

    var response = await http.post(Uri.parse('${MyApp.api}/api/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(<String, String>{
          "Username": Username,
          "email": email,
          "password": password,
          "Confirmpassword": confirmpassword,
          "Mobile_number": Mobile_number,

        }));
    if (response.statusCode == 200||response.statusCode == 201) {
      var stringObject = response.body;
      var user = userFromJson(stringObject);
      return user;
    }else{
      print("error");

      return null;

    }
  }
  static login({required email, required password,required Mobile_Number}) async {
    var response = await http.post(Uri.parse('${MyApp.api}/api/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(<String, String>{
          "Mobile_Number": Mobile_Number,
          "email": email,
          "password": password,
        }));
    if (response.statusCode == 200||response.statusCode == 201) {
      var stringObject = response.body;
      var user = userFromJson(stringObject);
      return user;
    }else
      return null;
  }



}
