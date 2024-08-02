import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newsapp/screens/onboarding.dart';
import 'Themes/color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme, fontFamily: "Montserrat"),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),

      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
    );
  }
}

