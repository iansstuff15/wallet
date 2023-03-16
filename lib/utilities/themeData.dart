// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class AppCommonData {
  static ThemeData appTheme = ThemeData(
    primarySwatch: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    textTheme: TextTheme(bodyMedium: TextStyle(color: AppColors.textColor)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.primary),
      foregroundColor: MaterialStateProperty.all(AppColors.textColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.extraLarge),
      )),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.extraLarge),
      )),
    )),
    inputDecorationTheme: InputDecorationTheme(fillColor: Colors.white),
  );
}
