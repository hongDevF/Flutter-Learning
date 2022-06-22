import 'package:first_flutter/instagram/pages/pageview.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: pageView(),
    );
  } //TODO: TESTER ADD
}
