import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:wallet/utilities/biometrics.dart';

import 'AppButton.dart';
import '../utilities/colors.dart';
import '../utilities/sizes.dart';

class AppCard extends StatefulWidget {
  bool hideInformation = false;
  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.medium, vertical: AppSizes.small),
      decoration: BoxDecoration(
          color: AppColors.container,
          borderRadius: BorderRadius.circular(AppSizes.small)),
      width: AppSizes.getWitdth(context) * .92,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Powell, Diriangen Lempira",
            style: TextStyle(
                fontSize: AppSizes.tweenSmall, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: AppSizes.extraSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.hideInformation
                  ? "123 456 789 000"
                  : "*** *** *** 000"),
              Text(
                widget.hideInformation ? "VISA" : "*****",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.extraSmall,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Your balance",
              style: TextStyle(
                  fontSize: AppSizes.small, fontWeight: FontWeight.w700),
            ),
            GestureDetector(
              onTap: () async {
                if (!widget.hideInformation) {
                  if (await AppBiometrics().authenticate()) {
                    setState(() {
                      widget.hideInformation = true;
                    });
                  }
                } else {
                  setState(() {
                    widget.hideInformation = false;
                  });
                }
              },
              child: Icon(
                widget.hideInformation ? EvaIcons.eyeOff : EvaIcons.eye,
                color: AppColors.textColor,
              ),
            ),
          ]),
          SizedBox(
            height: AppSizes.extraSmall,
          ),
          Text(
            widget.hideInformation ? "₱ 10,000.00" : "******",
            style: TextStyle(
                fontSize: AppSizes.medium, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: AppSizes.small,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.hideInformation ? "Debit" : "*****",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                widget.hideInformation ? "11/27" : "*****",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.small,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppButton(
                "Cash in",
                () {},
                background: AppColors.scaffoldBackground,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
