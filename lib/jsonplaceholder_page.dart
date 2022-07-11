import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JsonPlaceholderPage extends StatefulWidget {
  const JsonPlaceholderPage({Key? key}) : super(key: key);

  @override
  State<JsonPlaceholderPage> createState() => _JsonPlaceholderPageState();
}

class _JsonPlaceholderPageState extends State<JsonPlaceholderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.purple,
      title: Text("JSON Placeholder Page"),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: _buildFutureBuilder(),
    );
  }

  Future<String> _getData() async {
    String url = "https://jsonplaceholder.typicode.com/posts?userId=3";
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return "Something went wrong";
      }
    } catch (e) {
      return "Something went wrong";
      // return e.toString(); //for debug
    }
  }

  Widget _buildFutureBuilder() {
    return FutureBuilder<String>(
      future: _getData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return _buildDisplay(snapshot.data);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Widget _buildDisplay(String? data) {
    if (data == null) {
      return Icon(Icons.error);
    }

    List list = json.decode(data);
    // Map map1 = list[0];
    // print(map1);
    // print("map1['userId']: ${map1['userId']}");
    // print("map1['title']: ${map1['title']}");

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return _buildItem(list[index]);
      },
    );
  }

  Widget _buildItem(Map map1){
    int userId = map1['userId'];
    int id = map1['id'];
    String title = map1['title'];
    String body = map1['body'];
    return Card(
      child: ListTile(
        leading: Text("$id"),
        title: Text("$title"),
        subtitle: Text("$body"),
        trailing: Text("$userId"),
      ),
    );
  }
}
