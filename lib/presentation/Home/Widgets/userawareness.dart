import 'package:flutter/material.dart';
import 'package:phish_defender/core/textstyle.dart';

class UserAwareness extends StatelessWidget {
  const UserAwareness({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "👨‍✈️ User Awareness",
        style: dummystyle,
      ),
    );
  }
}
