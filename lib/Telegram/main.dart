import 'package:first_flutter/Telegram/screens/listchat/home_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(TeleGram());
}

class TeleGram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_screen(),
    );
  }
}
