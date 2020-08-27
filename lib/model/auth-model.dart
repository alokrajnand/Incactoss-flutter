import 'dart:convert';

Authmodel authmodelFromJson(String str) => Authmodel.fromJson(json.decode(str));

String authmodelToJson(Authmodel data) => json.encode(data.toJson());

class Authmodel {
  Authmodel({
    this.phoneNumber,
    this.password,
  });

  String phoneNumber;
  String password;

  factory Authmodel.fromJson(Map<String, dynamic> json) => Authmodel(
        phoneNumber: json["phone_number"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
        "password": password,
      };
}
