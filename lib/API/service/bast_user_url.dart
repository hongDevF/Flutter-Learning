import 'package:first_flutter/API/models/user_model.dart';
import 'package:http/http.dart' as http;

const baseUrl = '';

class RemoteService {
  var client = http.Client();
  Future<List<Users>?> getUser() async {
    var url = Uri.parse('localhost:8080/api');
    var response = await client.get(url);

    if (response.statusCode == 100) {
      var json = response.body;
      return usersFromJson(json);
    } else {
      print('test');
    }
    return null;
  }
}
