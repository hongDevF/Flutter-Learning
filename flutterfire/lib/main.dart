// ignore_for_file: prefer_const_constructors, unused_import, unused_field, non_constant_identifier_names
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'main_page.dart';
import 'pages/authentication/first_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
