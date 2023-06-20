import 'dart:developer';

import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:slider_button/slider_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppInput.dart';
import 'package:wallet/screens/otp.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class CurrencyExchange extends StatefulWidget {
  static String id = 'currency_exchange';

  @override
  State<CurrencyExchange> createState() => _CurrencyExchangeState();
}

class _CurrencyExchangeState extends State<CurrencyExchange> {
  List<String> steps = [
    'Account Information',
    'Amount to be sent',
    'Confirm transaction',
  ];

  int currentStep = 0;
  String selectedCurrency = '???';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: currentStep > 0
                  ? AppSizes.getHeight(context) * 0.18
                  : AppSizes.getHeight(context) * 0.11),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.mediumSmall),
              child: Column(
                children: [
                  SliderButton(
                    width: AppSizes.getWitdth(context) * 0.9,
                    height: 60,
                    radius: AppSizes.small,
                    backgroundColor: AppColors.container,
                    buttonColor: AppColors.primary,
                    shimmer: false,
                    action: () {
                      ///Do something here
                      Get.toNamed(OTP.id);
                    },
                    label: const Text(
                      "Slide to confirm transaction",
                      style: TextStyle(
                          color: Color(0xff4a4a4a),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    icon: SvgPicture.asset(
                      'assets/arrow-right.svg',
                      color: Colors.white,
                    ),
                  )
                ],
              ))),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.mediumSmall,
                  vertical: AppSizes.mediumSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    'Currency Exchange',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: AppSizes.medium),
                  ),
                  SizedBox(
                    height: AppSizes.mediumLarge,
                  ),
                  ListTile(
                    title: TextButton(
                        onPressed: () => {},
                        child: Row(children: [
                          Text(
                            'Php',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: AppSizes.mediumSmall),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 40,
                          ),
                        ])),
                    trailing: Text(
                      'Balance: ₱ 10,000',
                      style: TextStyle(fontSize: AppSizes.small),
                    ),
                  ),
                  Center(
                      child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.container,
                        borderRadius: BorderRadius.circular(AppSizes.small)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.medium,
                        vertical: AppSizes.extraSmall),
                    child: Text(
                      '1 Php = ${selectedCurrency}',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  )),
                  ListTile(
                    title: TextButton(
                        onPressed: () => {
                              showCurrencyPicker(
                                theme: CurrencyPickerThemeData(
                                    backgroundColor: AppColors.container,
                                    bottomSheetHeight:
                                        AppSizes.getHeight(context) * 0.5,
                                    titleTextStyle: TextStyle(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w800),
                                    currencySignTextStyle: TextStyle(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w800),
                                    subtitleTextStyle:
                                        TextStyle(color: AppColors.textColor)),
                                context: context,
                                showFlag: false,
                                showSearchField: false,
                                showCurrencyName: true,
                                showCurrencyCode: true,
                                onSelect: (Currency currency) {
                                  setState(() {
                                    selectedCurrency = currency.code.toString();
                                  });
                                  log('Select currency: ${currency.name}');
                                },
                                favorite: ['PHP'],
                              )
                            },
                        child: Row(children: [
                          Text(
                            selectedCurrency,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: AppSizes.mediumSmall),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 40,
                          ),
                        ])),
                    trailing: Text(
                      'Balance: ₱ 10,000',
                      style: TextStyle(fontSize: AppSizes.small),
                    ),
                  ),
                ],
              ))),
    );
  }
}
