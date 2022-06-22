import 'package:first_flutter/views/stack_slide_tik_tok_view.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Stack_slide_tik_tok_view(),
    );
  }
}
