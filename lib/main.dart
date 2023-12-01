import 'package:flutter/material.dart';
import 'package:phish_defender/core/colors.dart';
import 'package:phish_defender/core/routermap.dart';
import 'package:phish_defender/presentation/Home/home.dart';
import 'package:phish_defender/presentation/Splash_screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kgrey),
        useMaterial3: true,
        scaffoldBackgroundColor: kblack,
      ),
      home: const SplashScreen(),
      routes: routers,
    );
  }
}
