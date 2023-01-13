import 'package:first_flutter/randomuser_module/pages/randomuser_state_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  // const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomUserStatePage(),
    );
  }
}
