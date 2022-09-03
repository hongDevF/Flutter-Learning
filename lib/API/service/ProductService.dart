import 'package:first_flutter/API/models/ProductModel.dart';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static Future<List<ProductModel>> getData() async {
    // String url = "https://jsonplaceholder.typicode.com/posts?userId=3";
    String url = "https://dummyjson.com/products";
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return compute(getProductList, response.body);
      } else {
        throw Exception("Error while reading, code: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception("Error ${error.toString()}");
    }
  }
}

List<ProductModel> getProductList(String data) {
  List list = json.decode(data);
  List<ProductModel> ProductList = [];
  for (Map<String, dynamic> item in list) {
    ProductList.add(ProductModel.fromMap(item));
  }

  return ProductList;
}
