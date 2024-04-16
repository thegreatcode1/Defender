import 'package:flutter/material.dart';
import 'package:phish_defender/core/textstyle.dart';

class UserAwareness extends StatelessWidget {
  const UserAwareness({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(bounds);
        },
        child: const Text(
          'Gradient Text',
          style: dummystyle,
        ),
      ),
    );
  }
}
