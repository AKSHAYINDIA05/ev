import 'package:flutter/material.dart';
import 'package:myapp/utils/theme/widgets_theme/text_theme.dart';

class EVTheme {
  EVTheme._() ;
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, textTheme: EVTextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark, textTheme: EVTextTheme.darkTextTheme);
}
