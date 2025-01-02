class LoginModel {
  String? email;
  String? password;
  LoginModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory LoginModel.fromJson(Map<dynamic, dynamic> map) {
    return LoginModel(
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }
}
