import 'package:flutter/material.dart';
import 'light_mode.dart';
import 'dark_mode.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData {return _themeData;}

  bool get isDarkMode => _themeData == darkMode;

  set themeData (ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }
 void toggleTheme(){
    if (_themeData == lightMode){
      _themeData = darkMode;
    }else{
      _themeData = lightMode;
    }
    notifyListeners();
 }
}