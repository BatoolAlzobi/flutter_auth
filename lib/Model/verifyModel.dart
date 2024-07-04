
import 'dart:convert';

AuthResponseVerfy AuthResponseVerfyFromJson(String str) => AuthResponseVerfy.toObject(json.decode(str));




class AuthResponseVerfy {
  final int status;
  final String msg;
  final String accessToken;

  AuthResponseVerfy({
    required this.status,
    required this.msg,
    required this.accessToken,
  });

  factory AuthResponseVerfy.toObject(Map<String, dynamic> json) {
    return AuthResponseVerfy(
      status: json['status'] as int,
      msg: json['msg'] as String,
      accessToken: json['data']['accessToken'] as String,
    );
  }
}
