import 'package:flutter/material.dart';
import 'package:phish_defender/api_end_points/data.dart';
import 'package:phish_defender/core/colors.dart';
import 'package:phish_defender/core/constants.dart';
import 'package:phish_defender/core/textstyle.dart';
import 'package:phish_defender/presentation/Result_screen/result.dart';

final textcontroller =TextEditingController();
class HomeButtonandTextfield extends StatelessWidget {
  const HomeButtonandTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: textcontroller,
            style: hometextstyletextfieldurl,
            decoration: InputDecoration(
              fillColor: ktransparent.withOpacity(0.2),
              hintText: "paste url",
              hintStyle: hometextstyletextfield,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: kgrey,
                ),
              ),
            ),
          ),
          khight,
          MaterialButton(
            onPressed: () {
              String input = textcontroller.text;
              Datadb.instance.getletterascii(input);
              textcontroller.clear();
              Navigator.of(context).pushNamed(ResultScreen.routename);
            },
            color: kwhite,
            textColor: kblack,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            minWidth: 150,
            height: 40,
            child: const Text(
              "Submit",
              style: hometextstylebutton,
            ),
          ),
        ],
      ),
    );
  }
}
