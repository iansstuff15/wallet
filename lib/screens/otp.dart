import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/screens/home.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:pinput/pinput.dart';
import 'package:wallet/utilities/sizes.dart';

class OTP extends StatelessWidget {
  static String id = 'otp';
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 70,
      height: 75,
      textStyle: TextStyle(
          fontSize: 20,
          color: AppColors.textColor,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: BorderRadius.circular(20),
      ),
    );
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.small),
        child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: AppSizes.getHeight(context) * 0.18),
            child: Column(children: [
              AppButton(
                'Cancel Verification',
                () {
                  Get.toNamed(Home.id);
                },
                background: AppColors.container,
              ),
              SizedBox(
                height: AppSizes.small,
              ),
              AppButton('Verify', () {})
            ])),
      ),
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.mediumSmall,
                  vertical: AppSizes.mediumSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verify OTP',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: AppSizes.medium),
                  ),
                  SizedBox(
                    height: AppSizes.large,
                  ),
                  Center(
                    child: Text(
                      'Enter the code sent to the number',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: AppSizes.small),
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.small,
                  ),
                  Center(
                      child: Text(
                    '+639 6044 717 06',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: AppSizes.small),
                  )),
                  SizedBox(
                    height: AppSizes.medium,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Pinput(
                          defaultPinTheme: defaultPinTheme,
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          showCursor: true,
                          onCompleted: (pin) => print(pin),
                        ),
                      )),
                  SizedBox(
                    height: AppSizes.medium,
                  ),
                  Center(
                    child: Text(
                      'Didn\'t receive code?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: AppSizes.tweenSmall),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Resend',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          fontSize: AppSizes.tweenSmall),
                    ),
                  ),
                ],
              ))),
    );
  }
}
