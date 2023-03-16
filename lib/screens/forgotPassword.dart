// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppInput.dart';
import 'package:wallet/components/AppTextButton.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/utilities/sizes.dart';

class ForgotPassword extends StatelessWidget {
  static String id = "forgotpassword";

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
                          "Forgot Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppSizes.mediumLarge),
                        ),
                        SizedBox(
                          height: AppSizes.medium,
                        ),
                        AppInput("Email", TextInputType.emailAddress),
                        SizedBox(
                          height: AppSizes.small,
                        ),
                        AppButton(
                          "Send email verification",
                          () => {},
                          width: double.infinity,
                          height: AppSizes.large,
                          textSize: AppSizes.small,
                          textWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: AppSizes.small,
                        ),
                        AppTextButton(
                          "Remembered Password? Login",
                          () => {Navigator.pushNamed(context, Login.id)},
                          width: double.infinity,
                        ),
                      ],
                    ),
                  )))),
    );
  }
}
