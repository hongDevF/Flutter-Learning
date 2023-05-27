import 'package:first_flutter/randomuser_module/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'logics/randomuser_logic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RandomUserLogic()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
