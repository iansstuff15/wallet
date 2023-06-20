import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:wallet/components/AppButton.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class Transaction_Info extends StatelessWidget {
  static String id = 'transaction_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizes.extraSmall, vertical: AppSizes.small),
            child: AppButton(
              "Share",
              () {},
             
            )),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.extraSmall,
                      vertical: AppSizes.small),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: AppSizes.medium,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.mediumSmall,
                      ),
                      TicketWidget(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.medium,
                              vertical: AppSizes.small),
                          isCornerRounded: true,
                          color: AppColors.primary,
                          width: AppSizes.getWitdth(context) * 0.9,
                          height: AppSizes.getHeight(context) * 0.55,
                          child: Column(
                            children: [
                              Text(
                                'Transaction Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppSizes.mediumSmall,
                                    color: AppColors.textBox),
                              ),
                              SizedBox(
                                height: AppSizes.small,
                              ),
                              Text(
                                'Service Availed',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppSizes.small,
                                    color: AppColors.textBox),
                              ),
                              Text(
                                'Service 1',
                                style: TextStyle(
                                    fontSize: AppSizes.small,
                                    color: AppColors.textColor),
                              ),
                              SizedBox(
                                height: AppSizes.extraSmall,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Customer Email',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        'emailhere@gmail.com',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Customer Phone',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        '09275552015',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: AppSizes.extraSmall,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment Method',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        'Cash',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Customer Location',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        'Location Here',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: AppSizes.extraSmall,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date to accomplish',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        '04/27/23',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Time to accomplish',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        '01:03 pm',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: AppSizes.extraSmall,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date Availed',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        '04/27/23',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Time Availed',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppSizes.small,
                                            color: AppColors.textBox),
                                      ),
                                      Text(
                                        '01:03 pm',
                                        style: TextStyle(
                                            fontSize: AppSizes.small,
                                            color: AppColors.textColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: AppSizes.extraSmall,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.textBox,
                                        borderRadius: BorderRadius.circular(
                                            AppSizes.small)),
                                    child: BarcodeWidget(
                                      color: AppColors.textColor,
                                      drawText: false,
                                      barcode: Barcode.code128(),
                                      height:
                                          AppSizes.getHeight(context) * 0.15,
                                      padding: EdgeInsets.all(AppSizes.small),
                                      data: 'Order UID here',
                                    )),
                              )
                            ],
                          )),
                      SizedBox(
                        height: AppSizes.small,
                      ),
                    ],
                  ))),
        ));
  }
}
