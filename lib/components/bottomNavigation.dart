import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet/components/navigationButton.dart';
import 'package:wallet/screens/home.dart';
import 'package:wallet/screens/profile.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class AppBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: AppColors.scaffoldBackground,
      height: AppSizes.getHeight(context) * 0.075,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.extraSmall),
      notchMargin: AppSizes.extraSmall,
      shape: CircularNotchedRectangle(),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.large)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigationButton(
                    'Home', Icons.home, () => Get.toNamed(Home.id)),
                NavigationButton('History', Icons.history, () => {}),
                NavigationButton('Services', Icons.list, () => {}),
                NavigationButton('Profile', Icons.card_giftcard,
                    () => {Get.toNamed(Profile.id)})
              ])),
    );
  }
}
