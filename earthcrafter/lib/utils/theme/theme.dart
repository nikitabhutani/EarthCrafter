import 'package:earthcrafter/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EApptheme {
  EApptheme._();
  static ThemeData Lighttheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.lighttexttheme,
    elevatedButtonTheme: ElevatedButtonThemeData(),
  );
  static ThemeData Darktheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.darktexttheme,
  );

}
