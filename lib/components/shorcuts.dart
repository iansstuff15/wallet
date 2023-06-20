import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:wallet/components/AppBorderButton.dart';
import 'package:wallet/components/shorcutItem.dart';
import 'package:wallet/components/transactionListItem.dart';
import 'package:wallet/screens/currencyExchange.dart';
import 'package:wallet/screens/stocks.dart';
import 'package:wallet/screens/transaction_info.dart';
import 'package:wallet/utilities/colors.dart';

import '../utilities/sizes.dart';

class ServicesShortcuts extends StatelessWidget {
  const ServicesShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Shortcuts',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: AppSizes.mediumSmall),
            ),
            SizedBox(
              width: AppSizes.small,
            ),
            AppBorderButton(
              label: 'Edit',
              paddingVertical: AppSizes.extraSmall,
              onClick: () => {},
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.small,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShortcutItem(
              label: 'My Budgets',
              icon: Icon(Icons.list),
              onClick: () => {},
            ),
            ShortcutItem(
              label: 'Currency Exchange',
              icon: Icon(Icons.currency_exchange),
              onClick: () => {Get.toNamed(CurrencyExchange.id)},
            ),
            ShortcutItem(
              label: 'Stocks',
              icon: Icon(Icons.bar_chart),
              onClick: () => {Get.toNamed(Stocks.id)},
            ),
          ],
        )
      ],
    );
  }
}
