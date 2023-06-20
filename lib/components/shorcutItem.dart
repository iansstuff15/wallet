import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:wallet/utilities/colors.dart';
import 'package:wallet/utilities/sizes.dart';

class ShortcutItem extends StatefulWidget {
  String? label;
  Widget? icon;
  VoidCallback? onClick;
  ShortcutItem(
      {required this.label, required this.icon, required this.onClick});
  @override
  State<ShortcutItem> createState() => _ShortcutItemState();
}

class _ShortcutItemState extends State<ShortcutItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onClick,
        child: Container(
            padding: EdgeInsets.all(AppSizes.tweenSmall),
            height: AppSizes.large * 1.57,
            width: AppSizes.getWitdth(context) * 0.26,
            decoration: BoxDecoration(
                color: AppColors.container,
                borderRadius: BorderRadius.circular(AppSizes.small)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius:
                            BorderRadius.circular(AppSizes.extraLarge)),
                    padding: EdgeInsets.all(AppSizes.extraSmall),
                    child: widget.icon),
                SizedBox(
                  height: AppSizes.extraSmall,
                ),
                Text(
                  widget.label!,
                  style: TextStyle(fontSize: AppSizes.tweenSmall),
                )
              ],
            )));
  }
}
