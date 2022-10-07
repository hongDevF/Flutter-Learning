import 'package:first_flutter/animation/Animation1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myAnimation());
}

class myAnimation extends StatelessWidget {
  const myAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Animation1(),
    );
  }
}
