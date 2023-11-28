
import 'package:flutter/material.dart';
import 'package:phish_defender/presentation/Home/Widgets/homescreenwidget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: HomeButtonandTextfield(),
        ),
      ),
    );
  }
}
