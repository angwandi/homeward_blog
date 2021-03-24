import 'dart:convert' as convert;

import 'package:homeward_blog/api/api_end_points.dart';
import 'package:homeward_blog/model/login_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    var url = Uri.parse(LOGIN_URL);
    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(convert.json.decode(response.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
