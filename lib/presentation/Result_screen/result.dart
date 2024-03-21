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
                  if(value.isEmpty){
                    const Text('list is empty');
                  }
                  return  Text(
                    "hello",
                  //Datadb.instance.letternotifier.value[0].toString(),
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
