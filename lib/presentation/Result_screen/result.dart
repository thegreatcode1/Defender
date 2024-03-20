import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phish_defender/api_end_points/data.dart';
import 'package:phish_defender/core/textstyle.dart';

class ResultScreen extends StatelessWidget {
  static const routename = "result-screen";
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(
                valueListenable: Datadb.instance.letternotifier,
                builder: (context, value, _) {
                  return  Text(
                  '$value[0]',
                  style: dummystyle,
                );
                },
                
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("back"))
            ],
          ),
        ),
      ),
    );
  }
}
