import 'package:earthcrafter/features/authentications/screens/onboarding/onboarding.dart';
import 'package:earthcrafter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //thememode will remain the same as system
      themeMode: ThemeMode.system,
      //specification for light theme
      theme: EApptheme.LightTheme,
      //specification for dark theme
      darkTheme: EApptheme.DarkTheme,
      home: OnboardingScreen(),
    );
  }
}
