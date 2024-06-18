import 'package:flutter/material.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/feature/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: MyColor.deepPurple),
        scaffoldBackgroundColor: MyColor.mainColor,
      ),
      home: const OnboardingScreen(),
    );
  }
}