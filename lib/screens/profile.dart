import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wallet/components/AppLayout.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static String id = 'profile';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
