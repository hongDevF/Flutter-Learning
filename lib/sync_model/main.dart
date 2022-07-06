import 'package:flutter/material.dart';

import 'jsonplaceholder_page.dart';

void main(){
  runApp(SynceApp());
}
class SynceApp extends StatelessWidget {
  const SynceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JsonPlaceholderPage(),
    );
  }
}
