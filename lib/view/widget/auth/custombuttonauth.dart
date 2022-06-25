import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtomAuth extends StatelessWidget {
  CustomButtomAuth({Key? key, this.text, this.onPressed}) : super(key: key);

  String? text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColor.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onPressed,
      child: Text(
        text!,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
