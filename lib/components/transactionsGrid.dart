import 'package:awesome_card/awesome_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:wallet/components/AppBorderButton.dart';
import 'package:wallet/components/transactionListItem.dart';
import 'package:wallet/screens/transaction_info.dart';
import 'package:wallet/utilities/colors.dart';

import '../utilities/sizes.dart';

class TransactionGrid extends StatefulWidget {
  const TransactionGrid({super.key});

  @override
  State<TransactionGrid> createState() => _TransactionGridState();
}

class _TransactionGridState extends State<TransactionGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Activities',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: AppSizes.mediumSmall),
            ),
            SizedBox(
              width: AppSizes.small,
            ),
            AppBorderButton(
              label: 'View all',
              paddingVertical: AppSizes.extraSmall,
              onClick: () => {},
            )
          ],
        ),
        SizedBox(
          height: AppSizes.small,
        ),
        Container(
          width: AppSizes.getWitdth(context),
          height: AppSizes.getHeight(context) * 0.35,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            separatorBuilder: (context, index) => SizedBox(
              height: AppSizes.small,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () => Get.toNamed(Transaction_Info.id),
                  child: Card(
                      color: AppColors.container,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSizes.small)),
                      child: ListTile(
                        title: Text(
                          "Received ₱ 10, 000",
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('from Powell, Diriangen'),
                        trailing: Text('April 28, 2023'),
                      )));
            },
          ),
        ),
      ],
    );
  }
}
