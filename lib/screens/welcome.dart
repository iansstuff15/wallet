// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/utilities/sizes.dart';

class Welcome extends StatelessWidget {
  static String id = "welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/welcome.png"),
                    fit: BoxFit.cover,
                    opacity: 0.2),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.mediumSmall, vertical: AppSizes.small),
              child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: AppSizes.small, sigmaY: AppSizes.small),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Manage your finances with ease and security",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppSizes.mediumLarge),
                        ),
                        SizedBox(
                          height: AppSizes.medium,
                        ),
                        AppButton(
                          "Get Started",
                          () => {Navigator.pushNamed(context, Login.id)},
                          width: double.infinity,
                          height: AppSizes.large,
                          textSize: AppSizes.small,
                          textWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  )))),
    );
  }
}
