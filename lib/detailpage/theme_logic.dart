import 'package:flutter/material.dart';
class NoneStateThemeLogic extends ChangeNotifier{
  bool _dark = false;
  bool get dark => _dark;
  void toggleDark(){
    _dark = !_dark;
    notifyListeners();
  }
}