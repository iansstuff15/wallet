// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class AppCommonData {
  static ThemeData appTheme = ThemeData(
    primarySwatch: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.textColor),
      labelMedium: TextStyle(color: AppColors.textColor),
      bodySmall: TextStyle(color: AppColors.textColor),
      bodyLarge: TextStyle(color: AppColors.textColor),
      labelSmall: TextStyle(color: AppColors.textColor),
      labelLarge: TextStyle(color: AppColors.textColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(AppColors.primary),
      foregroundColor: MaterialStateProperty.all(AppColors.textColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.small),
      )),
    )),
    iconTheme: IconThemeData(color: AppColors.textColor),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.small),
      )),
    )),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.textBox,
        labelStyle: TextStyle(
          fontSize: AppSizes.small,
          color: AppColors.textColor,
        )),
  );
}
