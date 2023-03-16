import 'package:flutter/material.dart';
import 'package:wallet/screens/forgotPassword.dart';
import 'package:wallet/screens/login.dart';
import 'package:wallet/screens/register.dart';
import 'package:wallet/screens/welcome.dart';
import 'package:wallet/utilities/themeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppCommonData.appTheme,
      routes: {
        Welcome.id: (context) => Welcome(),
        Login.id: (context) => Login(),
        ForgotPassword.id: (context) => ForgotPassword(),
        Register.id: (context) => Register(),
      },
      initialRoute: Welcome.id,
    );
  }
}
