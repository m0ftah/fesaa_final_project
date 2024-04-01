
import 'package:fesaa_final_project/features/authentication/screens/onboarding/onboarding.dart';
import 'package:fesaa_final_project/utils/theme/them.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppthem.lighttheme,
      darkTheme: TAppthem.darktheme,
      home: const OnBoardingScreen(),
    );
  }
}
