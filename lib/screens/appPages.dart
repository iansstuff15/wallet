import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:wallet/components/AppLayout.dart';
import 'package:wallet/screens/profile.dart';

import 'home.dart';

class AppPages extends StatelessWidget {
  static String id = 'pages';

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return AppLayout(PageView(
      controller: controller,
      children: <Widget>[
        Center(child: Home()),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        ),
        Profile()
      ],
    ));
    ;
  }
}
