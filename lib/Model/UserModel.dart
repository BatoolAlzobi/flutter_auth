
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
  String ConfirmPassword;
  String email;
  int Mobile_Number;
  var image;

  User({required this.id, required this.username, required this.email ,
    required this.image,
    required this.Mobile_Number,
    required this.Password,
    required this.ConfirmPassword,
  });

  factory User.toObject(Map<String, dynamic> json) =>
      User(id: json['id'], username: json['username'], email: json['email'] , image: json['image'],
          Mobile_Number: json['Mobile_Number'], Password: json['Password'], ConfirmPassword:json['ConfirmPassword'] ,
      );

  Map<String, dynamic> toJson() => {
    "id" : id,
    "username" : username,
    "Password" : Password,
    "Mobile_Number" : Mobile_Number,
    "ConfirmPassword" : ConfirmPassword,
    "email" : email,
    "image" : image
  };

}
















