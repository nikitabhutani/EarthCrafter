import 'package:earthcrafter/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:earthcrafter/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:earthcrafter/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:earthcrafter/utils/theme/custom_themes/chiptheme.dart';
import 'package:earthcrafter/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:earthcrafter/utils/theme/custom_themes/outlined_button.dart';
import 'package:earthcrafter/utils/theme/custom_themes/text_field_theme.dart';
import 'package:earthcrafter/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EApptheme {
  EApptheme._();
  /// Light Theme

static ThemeData LightTheme =ThemeData(

useMaterial3: true,

fontFamily: 'Montserrat',

brightness: Brightness.light,

primaryColor: Colors.blue,

textTheme: ETextTheme.lighttexttheme,

chipTheme: EChipTheme.LightChipTheme,

scaffoldBackgroundColor: Colors.white,

appBarTheme: EAppBarTheme.lightAppBarTheme,

checkboxTheme: ECheckBoxTheme.lightCheckBoxTheme,

bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,

elevatedButtonTheme: EElevatedButtonTheme.lightelevatedbuttontheme,

outlinedButtonTheme: EOutlinedButtonTheme.lightoutlinedbuttontheme,

inputDecorationTheme: ETextFormFieldTheme.LightInputDecorationTheme,

);


    /// Dark Theme

static ThemeData DarkTheme =ThemeData(

useMaterial3: true,

fontFamily: 'Montserrat',

brightness: Brightness.dark,

primaryColor: Colors.blue,

textTheme: ETextTheme.darktexttheme,

chipTheme: EChipTheme.darkChipTheme,

scaffoldBackgroundColor: Colors.black,

appBarTheme: EAppBarTheme.darkAppBarTheme,

checkboxTheme: ECheckBoxTheme.darkCheckBoxTheme,

bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,

elevatedButtonTheme: EElevatedButtonTheme.darkelevatedbuttontheme,

outlinedButtonTheme: EOutlinedButtonTheme.darkoutlinedbuttontheme,

inputDecorationTheme: ETextFormFieldTheme.DarkInputDecorationTheme,

);

}
