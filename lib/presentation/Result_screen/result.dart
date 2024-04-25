import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phish_defender/api_end_points/data.dart';
import 'package:phish_defender/core/textstyle.dart';

class ResultScreen extends StatelessWidget {
  static const routename = "result-screen";
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1b485d), Color(0xff022f46)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.2, 0.6],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ValueListenableBuilder(
                  valueListenable: Datadb.instance.letternotifier,
                  builder: (context, value, _) {
                    if (Datadb.instance.letternotifier.value.isEmpty) {
                      return const CircularProgressIndicator.adaptive(
                        strokeAlign: BorderSide.strokeAlignCenter,
                        strokeWidth: 2,
                        semanticsLabel: "Loading",
                        backgroundColor: Colors.white,
                        semanticsValue: "loading",
                        strokeCap: StrokeCap.square,
                      );
                    } else if (Datadb.instance.letternotifier.value.isNotEmpty) {
                      return Text(
                        //"hello",
                        Datadb.instance.letternotifier.value[0],
                        style: dummystyle,
                      );
                    } else {
                      return const Text(
                        'No data available',
                        style: TextStyle(color: Colors.red),
                      );
                    }
                  },
                ),
                //SizedBox(height: 100,),
                ElevatedButton(
                    onPressed: () {
                      Datadb.instance.letternotifier.value.clear();
                      Navigator.of(context).pop();
                    },
                    child: const Text("back"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
