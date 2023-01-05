import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/randomuser_model.dart';

class RandomUserHelper {
  static Future<RandomUserModel> getData() async {
    String url = "https://randomuser.me/api?results=100&page=1";
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return compute(getRandomUser, response.body);
      } else {
        throw Exception("Error while reading, code: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception("Call api has Error please fix it ${error.toString()}");
    }
  }
}

RandomUserModel getRandomUser(String data) {
  Map<String, dynamic> map = json.decode(data);
  RandomUserModel randomUserModel = RandomUserModel.fromJson(map);
  return randomUserModel;
}
