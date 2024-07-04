import 'dart:convert';

AuthResponse AuthResponseFromJson(String str) => AuthResponse.toObject(json.decode(str));

class AuthResponse {
  final int status;
  final String msg;
  final String accessToken;

  AuthResponse({
    required this.status,
    required this.msg,
    required this.accessToken,
  });

  factory AuthResponse.toObject(Map<String, dynamic> json) {
    return AuthResponse(
      status: json['status'] as int,
      msg: json['msg'] as String,
      accessToken: json['data']['accessToken'] as String,
    );
  }
}
















