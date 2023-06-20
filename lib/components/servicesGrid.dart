import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wallet/components/AppBorderButton.dart';
import 'package:wallet/screens/send.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class ServicesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSizes.small,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppBorderButton(
              label: "Send",
              icon: SvgPicture.asset('assets/send.svg', color: Colors.white),
              onClick: () => {Get.toNamed(Send.id)},
            ),
            AppBorderButton(
              label: "Receive",
              icon: SvgPicture.asset(
                'assets/receive.svg',
                color: Colors.white,
              ),
              onClick: () => {},
            ),
            AppBorderButton(
              icon: Icon(Icons.menu),
              onClick: () => {},
            )
          ],
        ),
        SizedBox(
          height: AppSizes.extraSmall,
        ),
      ],
    );
  }
}
