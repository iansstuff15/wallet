import 'package:awesome_card/awesome_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppInput.dart';
import 'package:wallet/components/AppLayout.dart';
import 'package:wallet/components/budgets.dart';
import 'package:wallet/components/cardGrid.dart';
import 'package:wallet/components/shorcuts.dart';
import 'package:wallet/components/servicesGrid.dart';
import 'package:wallet/components/transactionsGrid.dart';
import 'package:wallet/components/card.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class Home extends StatefulWidget {
  static String id = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.medium, vertical: AppSizes.small),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(AppSizes.small),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.small),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 36, 117, 40),
                    Color.fromARGB(255, 30, 129, 35),
                    Color(0xff47a44b),
                  ],
                  stops: [0.2, 0.4, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Balance",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: AppSizes.small,
                  ),
                  Text(
                    "₱ 10,000.00",
                    style: TextStyle(
                        fontSize: AppSizes.medium, fontWeight: FontWeight.w400),
                  ),
                  ServicesGrid(),
                ],
              ),
            ),
            SizedBox(
              height: AppSizes.small,
            ),
            SizedBox(
              height: AppSizes.small,
            ),
            CardGrid(),
            SizedBox(
              height: AppSizes.small,
            ),
            Divider(
              color: AppColors.textColor,
            ),
            SizedBox(
              height: AppSizes.small,
            ),
            ServicesShortcuts(),
            SizedBox(
              height: AppSizes.small,
            ),
            Divider(
              color: AppColors.textColor,
            ),
            SizedBox(
              height: AppSizes.small,
            ),
            TransactionGrid(),
          ],
        ),
      ),
    ));
  }
}
