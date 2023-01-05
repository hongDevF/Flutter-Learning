import 'package:flutter/material.dart';


class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World !! "),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xFF000000FF)),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
