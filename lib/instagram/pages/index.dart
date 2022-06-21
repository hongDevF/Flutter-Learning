import 'package:first_flutter/instagram/page-screen/pageview.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const pageView(),
    );
    
  }
}
