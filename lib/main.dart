import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:wallet/screens/appPages.dart';
import 'package:wallet/screens/currencyExchange.dart';
import 'package:wallet/screens/forgotPassword.dart';
import 'package:wallet/screens/home.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/screens/otp.dart';
import 'package:wallet/screens/profile.dart';
import 'package:wallet/screens/register.dart';
import 'package:wallet/screens/send.dart';
import 'package:wallet/screens/stocks.dart';
import 'package:wallet/screens/transaction_info.dart';
import 'package:wallet/screens/welcome.dart';
import 'package:wallet/utilities/themeData.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Finex',
      theme: AppCommonData.appTheme,
      routes: {
        Welcome.id: (context) => Welcome(),
        Login.id: (context) => Login(),
        ForgotPassword.id: (context) => ForgotPassword(),
        Register.id: (context) => Register(),
        Home.id: (context) => Home(),
        Profile.id: (context) => Profile(),
        AppPages.id: (context) => AppPages(),
        OTP.id: (context) => OTP(),
        Transaction_Info.id: (context) => Transaction_Info(),
        Send.id: (context) => Send(),
        CurrencyExchange.id: (context) => CurrencyExchange(),
        Stocks.id: (context) => Stocks()
      },
      initialRoute: Welcome.id,
    );
  }
}
