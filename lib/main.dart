import 'package:first_flutter/randomuser_module/logics/randomuser_logic.dart';
import 'package:first_flutter/randomuser_module/pages/splash_page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  // const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RandomUserLogic()),
      ],
      child: MaterialApp(home: SplashPage()),
      // debugShowCheckedModeBanner: false,
      // home: SplashPage(),
    );
  }
}
