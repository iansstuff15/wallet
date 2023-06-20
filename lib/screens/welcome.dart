// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppTextButton.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/screens/register.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class Welcome extends StatefulWidget {
  static String id = "welcome";

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: AppSizes.getHeight(context) * 0.17,
          padding: EdgeInsets.symmetric(
              horizontal: AppSizes.mediumSmall, vertical: AppSizes.small),
          child: Column(
            children: [
              AppButton(
                "Login",
                () => {Get.toNamed(Login.id)},
                textSize: AppSizes.small,
                textWeight: FontWeight.bold,
              ),
              AppTextButton("Signup", () {
                Get.toNamed(Register.id);
              })
            ],
          )),
      body: SafeArea(
          child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.mediumSmall,
                      vertical: AppSizes.small),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: AppSizes.small, sigmaY: AppSizes.small),
                      child: SafeArea(
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image(
                                image: AssetImage('assets/card.png'),
                                width: double.infinity,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                  height: AppSizes.extraLarge + 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Finex",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.primary,
                                            fontSize: AppSizes.large),
                                      ),
                                      Text(
                                        " The smarter way to manage your finances",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: AppSizes.mediumSmall),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                      )))))
    ;
  }
}
