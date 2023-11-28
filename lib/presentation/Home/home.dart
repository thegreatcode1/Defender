import 'package:flutter/material.dart';
import 'package:phish_defender/core/colors.dart';
import 'package:phish_defender/core/constants.dart';
import 'package:phish_defender/core/textstyle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(),
              khight,
              MaterialButton(
                onPressed: () {},
                color: kwhite,
                textColor: kblack,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                minWidth:150,
                height: 40,
                child: const Text("Submit",style: hometextstyle,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
