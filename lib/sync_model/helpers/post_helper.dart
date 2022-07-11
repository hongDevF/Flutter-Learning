import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/post_model.dart';

class PostHelper{
  static Future<List<PostModel>> getData() async {
    // String url = "https://jsonplaceholder.typicode.com/posts?userId=3";
    String url = "https://jsonplaceholder.typicode.com/photos?albumId=2";

    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return compute(getPostList, response.body);

      } else {
        throw Exception("Error while reading, code: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception("Error ${error.toString()}");
    }
  }
}

List<PostModel> getPostList(String data){
  List list = json.decode(data);
  List<PostModel> postList = [];
  for(Map<String, dynamic> item in list){
    postList.add(PostModel.fromMap(item));
  }

  return postList;
}