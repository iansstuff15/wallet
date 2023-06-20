import 'package:awesome_card/awesome_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wallet/components/AppBorderButton.dart';
import 'package:wallet/components/transactionListItem.dart';
import 'package:wallet/screens/transaction_info.dart';
import 'package:wallet/utilities/colors.dart';

import '../utilities/sizes.dart';

class CardGrid extends StatefulWidget {
  const CardGrid({super.key});

  @override
  State<CardGrid> createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  bool showBackOfCard = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Your Cards',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: AppSizes.mediumSmall),
            ),
            SizedBox(
              width: AppSizes.small,
            ),
            AppBorderButton(
              icon: Icon(Icons.add),
              paddingVertical: AppSizes.extraSmall,
              onClick: () => {},
            )
          ],
        ),
        SizedBox(
          height: AppSizes.small,
        ),
        Container(
          height: AppSizes.extraLarge * 1.6,
          width: AppSizes.extraLarge * 1.5,
          padding: EdgeInsets.all(AppSizes.small),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.small),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 32, 139, 37),
                Color.fromARGB(255, 40, 165, 46),
                Color.fromARGB(255, 122, 211, 127),
              ],
              stops: [0.2, 0.4, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/mastercard.svg',
                    width: AppSizes.mediumLarge,
                  ),
                  Text(
                    'DEBIT CARD',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: AppSizes.tweenSmall),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizes.mediumSmall,
              ),
              Text(
                "₱ 10,000.00",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: AppSizes.mediumSmall),
              ),
              SizedBox(
                height: AppSizes.mediumLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SvgPicture.asset(
                    'assets/nfc.svg',
                    color: Colors.white,
                    width: AppSizes.mediumLarge,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
