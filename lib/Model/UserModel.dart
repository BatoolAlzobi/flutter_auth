
import 'dart:convert';

UserModel userFromJson(String str) => UserModel.toObject(json.decode(str));

class UserModel {
  User user;
  String token;

  UserModel({required this.user, required this.token});

  factory UserModel.toObject(Map<String, dynamic> json) =>
      UserModel(
        user: User.toObject(
            json['user']),
        token: json['token'],
      );

  Map<String, dynamic> toJson() => {
    "user" : user.toJson(),
    "token" : token,
  };
}

class User {
  int id;
  String username;
  String Password;
  String password_confirmation;
  String email;
  int phone_number;
  var photo;
  var certificate
  ;

  User({required this.id,
    required this.username,
    required this.email ,
    // required
    this.photo,
    required this.phone_number,
    required this.Password,
    required this.password_confirmation,
    // required
    this.certificate
    ,
  });

  factory User.toObject(Map<String, dynamic> json) =>
      User(id: json['id'], username: json['username'], email: json['email'] , photo: json['photo'],
          phone_number: json['phone_number'], Password: json['Password'],
        password_confirmation:json['password_confirmation'] ,
        certificate:json['certificate'] ,
      );

  Map<String, dynamic> toJson() => {
    "id" : id,
    "username" : username,
    "Password" : Password,
    "phone_number" : phone_number,
    "password_confirmation" : password_confirmation,
    "email" : email,
    "certificate": certificate,
    "photo" : photo
  };

}
















