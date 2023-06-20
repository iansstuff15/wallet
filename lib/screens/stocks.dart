import 'dart:convert';
import 'dart:developer';
import 'dart:io';

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
import 'package:http/http.dart' as http;
import 'dart:convert';

class Stocks extends StatefulWidget {
  static String id = 'stocks';

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  List<dynamic> stocks = [];
  Future<List<dynamic>> fetchData() async {
    final response =
        await http.get(Uri.parse('http://phisix-api.appspot.com/stocks.json'));

    if (response.statusCode == 200) {
      // Parse the JSON response
      final data = jsonDecode(response.body);

      // Assuming the JSON response is a list, you can return it
      return data['stock'];
    } else {
      // Handle error if the request was not successful
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData().then((data) {
      setState(() {
        stocks = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(
                  left: AppSizes.mediumSmall,
                  right: AppSizes.mediumSmall,
                  top: AppSizes.mediumSmall),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    'Stocks',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: AppSizes.medium),
                  ),
                  SizedBox(
                    height: AppSizes.small,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints(maxHeight: AppSizes.getHeight(context)) *
                            0.99,
                    child: ListView.builder(
                      itemCount: stocks.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSizes.small)),
                            color: AppColors.container,
                            child: Column(children: [
                              ListTile(
                                title: Text(
                                  stocks[index]['name'],
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w800),
                                ),
                                subtitle: Text(stocks[index]['symbol']),
                                trailing: Text(
                                  stocks[index]['percent_change'].toString(),
                                  style: TextStyle(
                                      color: stocks[index]['percent_change'] < 0
                                          ? Colors.redAccent
                                          : AppColors.primary,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: AppSizes.small,
                                      right: AppSizes.small,
                                      bottom: AppSizes.small),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${stocks[index]['price']['currency'].toString()} ${stocks[index]['price']['amount'].toString()}',
                                        style: TextStyle(
                                            color: AppColors.textColor,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        '${stocks[index]['volume'].toString()}',
                                        style: TextStyle(
                                            color: AppColors.textColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ))
                            ]));
                      },
                    ),
                  )
                ],
              )))),
    );
  }
}
