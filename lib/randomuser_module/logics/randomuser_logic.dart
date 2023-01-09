import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../constants/status_enum.dart';
import '../models/randomuser_model.dart';

class RandomUserLogic extends ChangeNotifier {
  RandomUserModel _randomUserModel = RandomUserModel(results: [], info: Info());
  RandomUserModel get randomUserModel => _randomUserModel;

  Status _status = Status.none;
  Status get status => _status;

  void setLoading() {
    _status = Status.loading;
    notifyListeners();
  }

  Future _getData() async {
    String url = "https://randomuser.me/api?results=25&page=2";
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        _randomUserModel = await compute(_getRandomUser, response.body);
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

  int _page = 0;

  List<Result> _resultList = [];
  List<Result> get resultList => _resultList;

  List<Result> _favoriteList = [];
  List<Result> get favoriteList => _favoriteList;

  void addToFavorite(Result item) {
    _favoriteList.add(item);
    notifyListeners();
  }

  void removeFromFavorite(Result item) {
    _favoriteList.remove(item);
    notifyListeners();
  }

  bool isFavorite(Result item) {
    return _favoriteList.contains(item);
  }

  bool hasFavorite() {
    return _favoriteList.isNotEmpty;
  }

  Future getMoreData({bool refreshed = false}) async {
    if (refreshed) _page = 0;
    _page++;

    String url = "https://randomuser.me/api?results=25&page=$_page";
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        _randomUserModel = await compute(_getRandomUser, response.body);
        if (refreshed) {
          _resultList = _randomUserModel.results;
        } else {
          _resultList += _randomUserModel.results;
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

RandomUserModel _getRandomUser(String data) {
  Map<String, dynamic> map = json.decode(data);
  RandomUserModel randomUserModel = RandomUserModel.fromJson(map);
  return randomUserModel;
}
