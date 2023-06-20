// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppInput.dart';
import 'package:wallet/components/AppTextButton.dart';
import 'package:wallet/screens/forgotPassword.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/utilities/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.mediumSmall, vertical: AppSizes.extraSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sign up to continue",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: AppSizes.medium),
          ),
          LinearProgressIndicator(
            value: 0.5, // The progress value, between 0 and 1
          )
        ],
      ),
    ));
  }
}

class CustomBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSizes.mediumSmall, vertical: AppSizes.extraSmall),
        child: SizedBox(
            height: AppSizes.getHeight(context) * 0.14,
            child: Column(
              children: [
                AppButton(
                  "Next",
                  () => {},
                  width: double.infinity,
                  height: AppSizes.mediumLarge,
                  textSize: AppSizes.small,
                  textWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: AppSizes.small,
                ),
                AppTextButton(
                  "Already have an account? Login",
                  () => {Get.toNamed(Login.id)},
                  width: double.infinity,
                ),
              ],
            )));
  }
}

class Register extends StatefulWidget {
  static String id = "register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNav(),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppSizes.mediumSmall, vertical: AppSizes.extraSmall),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: AppSizes.small,
            ),
            SizedBox(
              height: AppSizes.extraSmall,
            ),
          ],
        ),
      )),
    );
  }
}
