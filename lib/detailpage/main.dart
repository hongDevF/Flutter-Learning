import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_module/logics/counter_logic.dart';
import '../state_module/pages/state_page.dart';
import 'theme_logic.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CounterLogic()),
          ChangeNotifierProvider(create: (context) => NoneStateThemeLogic()),
          ChangeNotifierProvider(create: (context) => NoneStateThemeLogic()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: StatePage(),
        ),
    );
  }
}


