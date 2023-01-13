import 'package:first_flutter/randomuser_module/pages/randomuser_state_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logics/randomuser_logic.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () async {
      await context.read<RandomUserLogic>().getMoreData();
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => RandomUserStatePage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.person, size: 100),
      ),
    );
  }
}
