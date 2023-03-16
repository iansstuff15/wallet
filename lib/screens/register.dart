// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/components/AppInput.dart';
import 'package:wallet/components/AppTextButton.dart';
import 'package:wallet/screens/forgotPassword.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/utilities/sizes.dart';

class Register extends StatefulWidget {
  static String id = "register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/welcome.png"),
                    fit: BoxFit.cover,
                    opacity: 0.2),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.mediumSmall,
                  vertical: AppSizes.extraSmall),
              child: Flexible(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: AppSizes.small, sigmaY: AppSizes.small),
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Sign up to continue!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppSizes.mediumLarge),
                            ),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: AppSizes.getHeight(context) * 0.58,
                                  width: AppSizes.getWitdth(context)),
                              child: Stepper(
                                type: StepperType.horizontal,
                                currentStep: _index,
                                onStepCancel: () {
                                  if (_index > 0) {
                                    setState(() {
                                      _index -= 1;
                                    });
                                  }
                                },
                                onStepContinue: () {
                                  if (_index <= 0) {
                                    setState(() {
                                      _index += 1;
                                    });
                                  }
                                },
                                onStepTapped: (int index) {
                                  setState(() {
                                    _index = index;
                                  });
                                },
                                steps: <Step>[
                                  Step(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Personal',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Infomation',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    content: SingleChildScrollView(
                                        child: Column(
                                      children: [
                                        AppInput(
                                          "First Name",
                                          TextInputType.name,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        AppInput(
                                            "Last Name", TextInputType.name),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        AppInput(
                                            "Middle Name", TextInputType.name),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    )),
                                  ),
                                  Step(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Contact',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Infomation',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    content: Text('Content for Step 2'),
                                  ),
                                  Step(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Account',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          'Credentials',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    content: Text('Content for Step 2'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AppSizes.extraSmall,
                            ),
                            AppButton(
                              "Sign up",
                              () => {},
                              width: double.infinity,
                              height: AppSizes.mediumLarge,
                              textSize: AppSizes.small,
                              textWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppButton(
                              "Sign in with Google",
                              () => {},
                              width: double.infinity,
                              height: AppSizes.mediumLarge,
                              textSize: AppSizes.small,
                              textWeight: FontWeight.bold,
                              background: Colors.white,
                              foreground: Colors.black,
                              icon: 'assets/google.svg',
                            ),
                            SizedBox(
                              height: AppSizes.small,
                            ),
                            AppTextButton(
                              "Already have an account? Login",
                              () => {Navigator.pushNamed(context, Login.id)},
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ))))),
    );
  }
}
