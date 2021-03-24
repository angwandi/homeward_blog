import 'dart:convert';
import 'dart:io';

import 'package:homeward_blog/model/blog_list.dart';
import 'package:homeward_blog/model/login_model.dart';
import 'package:http/http.dart' as http;

class Backend {
  const Backend(this.hostUrl);

  final String hostUrl;

  //Get list of blogs from the API
  Future<List<BlogListModel>> getBlogs() async {
    final url = Uri.parse('$hostUrl/blogs');

    // Fetch the data from the API.
    final response = await http
        .get(url, headers: {HttpHeaders.authorizationHeader: 'Bearer ' + "10"});

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

    // Convert every item in the list into a `Blogs`.
    final blogs = jsonData
        .map((jsonObject) => BlogListModel.fromJson(jsonObject))
        .toList();

    return blogs;
  }

  //Login to get the token from the API
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    final url = Uri.parse('$hostUrl/login');

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
