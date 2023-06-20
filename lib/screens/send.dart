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

class Send extends StatefulWidget {
  static String id = 'send';

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  TextEditingController accountNumber = TextEditingController();
  TextEditingController accountName = TextEditingController();
  TextEditingController purpouse = TextEditingController();
  TextEditingController amount = TextEditingController();

  List<String> steps = [
    'Account Information',
    'Amount to be sent',
    'Confirm transaction',
  ];

  int currentStep = 0;

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
                  currentStep > 0
                      ? AppButton(
                          'Previous',
                          () {
                            setState(() {
                              currentStep--;
                            });
                          },
                          background: AppColors.container,
                        )
                      : Container(),
                  SizedBox(
                    height: AppSizes.small,
                  ),
                  currentStep != steps.length - 1
                      ? AppButton('Next', () {
                          setState(() {
                            currentStep++;
                          });
                        })
                      : SliderButton(
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
                    'Send Money',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: AppSizes.medium),
                  ),
                  Text(
                    steps[currentStep],
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: AppSizes.small),
                  ),
                  SizedBox(
                    height: AppSizes.extraSmall,
                  ),
                  StepProgressIndicator(
                    totalSteps: steps.length,
                    currentStep: currentStep + 1,
                    selectedColor: AppColors.primary,
                    unselectedColor: AppColors.container,
                  ),
                  SizedBox(
                    height: AppSizes.mediumLarge,
                  ),
                  currentStep == 0
                      ? Column(
                          children: [
                            AppInput('Account Number', TextInputType.number,
                                accountNumber),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppInput('Account Name', TextInputType.name,
                                accountName),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppInput('Purpouse', TextInputType.name, purpouse)
                          ],
                        )
                      : Container(),
                  currentStep == 1
                      ? Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(AppSizes.small),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppSizes.small),
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
                                        fontSize: AppSizes.medium,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppInput(
                                'Amount to send', TextInputType.number, amount),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            Text(
                              'A transfer fee of  ₱10 will be deducted to your account after the transfer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: AppSizes.tweenSmall),
                            )
                          ],
                        )
                      : Container(),
                  currentStep == steps.length - 1
                      ? Container(
                          padding: EdgeInsets.all(AppSizes.small),
                          decoration: BoxDecoration(
                              color: AppColors.container,
                              borderRadius:
                                  BorderRadius.circular(AppSizes.small)),
                          height: AppSizes.extraLarge * 2.9,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(
                                  'Account Number',
                                  style: TextStyle(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  accountNumber.text,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Account Name',
                                  style: TextStyle(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  accountNumber.text,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Purpouse',
                                  style: TextStyle(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  purpouse.text,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  amount.text,
                                ),
                              ),
                            ],
                          ))
                      : Container(),
                ],
              ))),
    );
  }
}
