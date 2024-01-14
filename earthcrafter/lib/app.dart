import 'package:earthcrafter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //thememode will remain the same as system
      themeMode: ThemeMode.system,
      //specification for light theme
      theme:EApptheme.LightTheme,
      //specification for dark theme
      darkTheme: EApptheme.DarkTheme,
    );
  }
}