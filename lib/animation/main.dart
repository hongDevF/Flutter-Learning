import 'package:first_flutter/animation/Stack1.dart';
import 'package:first_flutter/animation/video/page.dart';
import 'package:flutter/material.dart';

import 'Animation1.dart';
import 'ShowDialog.dart';

void main(List<String> args) {
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
