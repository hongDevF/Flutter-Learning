// ignore_for_file: prefer_final_fields

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../constants/status_enum.dart';
import '../modal/view_all_product_modal.dart';

//Function covert to string
String convertModelString(
  dynamic text,
) {
  text = (text == null ? '' : text.toString());
  String coText = text == null || text == 'null' ? '' : text;
  return coText;
}

Future<List<ProductsResult>> products() async {
  const url = 'https://dummyjson.com/products';
  var response = await http.get(Uri.parse(url));
  var jsonData = json.decode(response.body);
  var jsonArray = jsonData['products'];
  List<ProductsResult> productDetail = [];
  for (var jsonProducts in jsonArray) {
    ProductsResult product = ProductsResult(
      id: jsonProducts['id'],
      title: convertModelString(jsonProducts['title']),
      stock: convertModelString(jsonProducts['stock']),
      discountPercentage:
          convertModelString(jsonProducts['discountPercentage']),
      rating: convertModelString(jsonProducts['rating']),
      images: [],
      thumbnail: convertModelString(jsonProducts['thumbnail']),
      category: convertModelString(jsonProducts['category']),
      brand: convertModelString(jsonProducts['brand']),
      price: convertModelString(jsonProducts['price']),
      description: convertModelString(jsonProducts['description']),
    );
    productDetail.add(product);
  }
  return productDetail;
}

//Get Data by Logic
class ProductListLogic extends ChangeNotifier {
  AutogeneratedProductModel _productGenerate =
      AutogeneratedProductModel(total: 100, skip: 10, limit: 20, products: []);
  AutogeneratedProductModel get randomUserModel => _productGenerate;

  Status _status = Status.none;
  Status get status => _status;

  void setLoading() {
    _status = Status.loading;
    notifyListeners();
  }

  int _page = 0;

  List<ProductsResult> _resultList = [];
  List<ProductsResult> get resultList => _resultList;

  List<ProductsResult> _favoriteList = [];
  List<ProductsResult> get favoriteList => _favoriteList;

  Future getMoreData({bool refreshed = false}) async {
    if (refreshed) _page = 0;
    _page++;

    String url = "https://dummyjson.com/products?limit=$_page";
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        _productGenerate = await compute(_getMoreProductList, response.body);
        if (refreshed) {
          _resultList = _productGenerate.products;
        } else {
          _resultList += _productGenerate.products;
        }
        _status = Status.done;
      } else {
        debugPrint("Error while reading, code: ${response.statusCode}");
        _status = Status.error;
      }
    } catch (error) {
      debugPrint("Error ${error.toString()}");
      _status = Status.error;
    }
    notifyListeners();
  }
}

AutogeneratedProductModel _getMoreProductList(String data) {
  Map<String, dynamic> map = json.decode(data);
  AutogeneratedProductModel autogeneratedProductModel =
      AutogeneratedProductModel.fromJson(map);
  return autogeneratedProductModel;
}
