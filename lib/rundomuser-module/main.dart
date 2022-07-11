import 'package:first_flutter/rundomuser-module/pages/randomuser_page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(SynceApp());
}
class SynceApp extends StatelessWidget {
  const SynceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomUserPage(),
    );
  }
}
