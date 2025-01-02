import 'dart:convert';

LoginEntity loginEntityFromJson(String str) =>
    LoginEntity.fromJson(json.decode(str));

String loginEntityToJson(LoginEntity data) => json.encode(data.toJson());

class LoginEntity {
  LoginEntity();

  factory LoginEntity.fromJson(Map<String, dynamic> json) => LoginEntity();

  Map<String, dynamic> toJson() => {};
}
