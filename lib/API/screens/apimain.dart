import 'package:first_flutter/API/screens/PostScreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: PostScreen(),
    );
  }
}
