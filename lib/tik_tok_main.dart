
import 'package:flutter/material.dart';
import 'package:first_flutter/tik_tok_profile.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TikTok_Profile(),
    );
  }
}
