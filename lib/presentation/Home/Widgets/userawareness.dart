import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:phish_defender/core/textstyle.dart';
//import 'package:phish_defender/core/textstyle.dart';

class UserAwareness extends StatelessWidget {
  const UserAwareness({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Center(
        child: AnimatedTextKit(
          isRepeatingAnimation: false,
          animatedTexts: [
            ScaleAnimatedText(
              "Welcome",
              textAlign: TextAlign.center,
              textStyle: textStyleawerness,
            ),
            ScaleAnimatedText(
              "To",
              textAlign: TextAlign.center,
              textStyle: textStyleawerness,
            ),
            ScaleAnimatedText(
              "DEFENDER",
              textAlign: TextAlign.center,
              textStyle: textStyleawerness,
              scalingFactor: 10
            ),
            TypewriterAnimatedText(
              'What is phishing?\n\nPhishing is a deceitful tactic used by cybercriminals to trick individuals into revealing sensitive information such as login credentials, financial details, or personal data. These attacks often come in the form of deceptive emails, text messages, or phone calls that appear to be from legitimate sources.',
              cursor: "*",
              textAlign: TextAlign.justify,
              textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
