import 'package:flutter/material.dart';
import 'jsonplaceholder_page.dart';
void main(){
  runApp(JsonPlace());
}
class JsonPlace extends StatelessWidget {
  // const JsonPlace({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JsonPlaceholderPage(),
    );
  }
}
