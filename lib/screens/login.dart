// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppInput.dart';
import 'package:wallet/components/AppTextButton.dart';
import 'package:wallet/screens/appPages.dart';
import 'package:wallet/screens/forgotPassword.dart';
import 'package:wallet/screens/home.dart';
import 'package:wallet/screens/otp.dart';
import 'package:wallet/screens/register.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class Login extends StatelessWidget {
  static String id = "login";
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.mediumSmall,
                      vertical: AppSizes.extraSmall),
                  child: Flexible(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(
                              sigmaX: AppSizes.small, sigmaY: AppSizes.small),
                          child: SafeArea(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/card2.png'),
                                  width: double.infinity,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Login to Finex",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.mediumLarge),
                                      ),
                                      SizedBox(
                                        height: AppSizes.mediumSmall,
                                      ),
                                      AppInput("Email",
                                          TextInputType.emailAddress, email),
                                      SizedBox(
                                        height: AppSizes.small,
                                      ),
                                      AppInput(
                                        "Password",
                                        TextInputType.text,
                                        password,
                                        obsure: true,
                                      ),
                                      SizedBox(
                                        height: AppSizes.extraSmall,
                                      ),
                                      AppTextButton(
                                        "Forgot Password",
                                        () => {Get.toNamed(ForgotPassword.id)},
                                        width: double.infinity,
                                      ),
                                      SizedBox(
                                        height: AppSizes.extraSmall,
                                      ),
                                      AppButton(
                                        "Login",
                                        () => {
                                          Get.toNamed(
                                            Home.id,
                                          )
                                        },
                                        width: double.infinity,
                                        height: AppSizes.mediumLarge,
                                        textSize: AppSizes.small,
                                        textWeight: FontWeight.bold,
                                      ),
                                      SizedBox(
                                        height: AppSizes.small,
                                      ),
                                      AppTextButton(
                                        "Dont have an account yet? Sign up",
                                        () => {Get.toNamed(Register.id)},
                                        width: double.infinity,
                                      ),
                                    ])
                              ],
                            ),
                          )))))),
    );
  }
}
