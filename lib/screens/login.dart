// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppInput.dart';
import 'package:wallet/components/AppTextButton.dart';
import 'package:wallet/screens/forgotPassword.dart';
import 'package:wallet/screens/register.dart';
import 'package:wallet/utilities/sizes.dart';

class Login extends StatelessWidget {
  static String id = "login";

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
                  horizontal: AppSizes.mediumSmall,
                  vertical: AppSizes.extraSmall),
              child: Flexible(
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
                              height: AppSizes.small,
                            ),
                            AppInput("Email", TextInputType.emailAddress),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppInput(
                              "Password",
                              TextInputType.text,
                              obsure: true,
                            ),
                            SizedBox(
                              height: AppSizes.extraSmall,
                            ),
                            AppTextButton(
                              "Forgot Password",
                              () => {
                                Navigator.pushNamed(context, ForgotPassword.id)
                              },
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: AppSizes.extraSmall,
                            ),
                            AppButton(
                              "Login",
                              () => {},
                              width: double.infinity,
                              height: AppSizes.mediumLarge,
                              textSize: AppSizes.small,
                              textWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppButton(
                              "Sign in with Google",
                              () => {},
                              width: double.infinity,
                              height: AppSizes.mediumLarge,
                              textSize: AppSizes.small,
                              textWeight: FontWeight.bold,
                              background: Colors.white,
                              foreground: Colors.black,
                              icon: 'assets/google.svg',
                            ),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppTextButton(
                              "Dont have an account yet? Sign up",
                              () => {Navigator.pushNamed(context, Register.id)},
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ))))),
    );
  }
}
