import 'package:flutter/material.dart';
import 'package:proje_fruit_shopping/async/helper/view_all_post_helper.dart';
import 'package:proje_fruit_shopping/get_start_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ProductListLogic()),
        ],
        child: MaterialApp(
          title: 'Fruit Shopping',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const GetStartScreen(),
        ));
  }
}
