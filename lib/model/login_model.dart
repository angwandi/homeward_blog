// login classes fields
class LoginModelFields {
  static const String token = 'token';
  static const String error = 'error';
  static const String email = 'email';
  static const String password = 'password';
}

//Login response model class
class LoginResponseModel {
  final String? token;
  final String? error;

//model constructor
  LoginResponseModel({
    this.token,
    this.error,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json[LoginModelFields.token] != null
          ? json[LoginModelFields.token]
          : "",
      error: json[LoginModelFields.error] != null
          ? json[LoginModelFields.error]
          : "",
    );
  }
}

//Login request model class
class LoginRequestModel {
  final String? email;
  final String? password;

//model constructor
  LoginRequestModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      LoginModelFields.email: email!.trim(),
      LoginModelFields.password: password!.trim(),
    };
    return map;
  }
}
