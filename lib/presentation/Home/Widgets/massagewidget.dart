import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MassageWidget extends StatelessWidget {
  final String text;
  final String isformtext;
  const MassageWidget({
    super.key,
    required this.text,
    required this.isformtext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 520),
            decoration: BoxDecoration(
              color: text == 'true' ? Colors.green : Colors.grey,
              borderRadius: BorderRadius.circular(
                18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
