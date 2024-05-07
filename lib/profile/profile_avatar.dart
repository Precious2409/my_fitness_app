import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key, required this.rad,
  });

  final double rad;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: rad,
        backgroundImage: AssetImage("assets/images/nourish_your_body.png"));
  }
}
