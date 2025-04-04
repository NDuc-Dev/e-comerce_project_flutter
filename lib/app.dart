import 'package:e_cormerce_project/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_cormerce_project/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
