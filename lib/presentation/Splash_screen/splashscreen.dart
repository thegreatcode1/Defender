import 'package:flutter/material.dart';
import 'package:phish_defender/core/textstyle.dart';
import 'package:phish_defender/presentation/Home/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //delay fuction
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routename);
    });

    return const Scaffold(
      body: Center(
        child: Text(
          "DEFENDER",
          style: splashscreentext,
        ),
      ),
    );
  }
}
