import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:homeward_blog/model/blog_list.dart';
import 'package:homeward_blog/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

///Could have split in two but this single provider model works well for the purpose of this app
class Backend extends ChangeNotifier {
  //Login and get the token generated from the API
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    //Login API Endpoint
    final url = Uri.parse(
      "https://60585b2ec3f49200173adcec.mockapi.io/api/v1/login",
    );

    //Post the login request
    final response = await http.post(
      url,
      body: requestModel.toJson(),
    );

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      print('Result: ${response.body}');
      SharedPreferences prefs = await SharedPreferences.getInstance();

      //setting the token inside the shared_preferences using the token key from the API
      await prefs.setString('token', responseJson['token']);

      //update UI if needed to: state management
      notifyListeners();
      return LoginResponseModel.fromJson(responseJson);
    } else {
      throw Exception('Log In failed!');
    }
  }

  //Get list of blogs from the API
  Future<List<BlogListModel>> getBlogs() async {
    print('Get blogs starts');

    //Get the token saved from the previous post request
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print('Token: $token');

    //Added a filter for date created and descending order
    final url = Uri.parse(
        'https://60585b2ec3f49200173adcec.mockapi.io/api/v1/blogs?sortBy=createdAt&order=desc');

    // Fetch the data from the API.
    final response = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer ' + "$token",
      },
    );

    // If the request failed, we throw an exception.
    if (response.statusCode != 200) {
      throw HttpException(
        '${response.statusCode}: ${response.reasonPhrase}',
      );
    }

    // Get the JSON data from the response.
    final body = response.body;

    // Convert the body, a String, into a JSON object.
    final jsonData = json.decode(body) as List;

    // Convert every item in the list into a `Blog`.
    final blogs = jsonData
        .map((jsonObject) => BlogListModel.fromJson(jsonObject))
        .toList();
    notifyListeners();
    return blogs;
  }
}
