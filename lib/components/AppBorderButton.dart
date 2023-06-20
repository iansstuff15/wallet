import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart ';

import '../utilities/colors.dart';
import '../utilities/sizes.dart';

class AppBorderButton extends StatefulWidget {
  String? label;
  Widget? icon;
  VoidCallback? onClick;
  double? paddingVertical;
  double? paddingHorizontal;
  AppBorderButton(
      {this.label,
      this.icon,
      this.paddingVertical = 16,
      this.paddingHorizontal = 18,
      required this.onClick});
  @override
  State<AppBorderButton> createState() => _AppBorderButtonState();
}

class _AppBorderButtonState extends State<AppBorderButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onClick,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.textColor),
              borderRadius: BorderRadius.circular(AppSizes.medium)),
          padding: EdgeInsets.symmetric(
              vertical: widget.paddingVertical!,
              horizontal: widget.paddingHorizontal!),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.icon ?? Container(),
              widget.label != null
                  ? Padding(
                      padding: EdgeInsets.only(
                          left: widget.icon != null ? AppSizes.extraSmall : 0),
                      child: Text(
                        widget.label.toString(),
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ))
                  : Container(),
            ],
          ),
        ));
  }
}
