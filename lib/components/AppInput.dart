import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wallet/utilities/sizes.dart';

class AppInput extends StatefulWidget {
  String? placeholder;
  TextInputType? keyboard;
  bool? obsure;
  AppInput(this.placeholder, this.keyboard, {this.obsure = false});
  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.small),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.small)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text(widget.placeholder!),
          TextField(
            decoration: InputDecoration(
              labelText: widget.placeholder,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              labelStyle: TextStyle(fontSize: AppSizes.small),
            ),
            keyboardType: widget.keyboard,
            obscureText: widget.obsure!,
          )
        ],
      ),
    );
  }
}
