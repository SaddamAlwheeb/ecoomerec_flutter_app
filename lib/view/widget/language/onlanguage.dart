import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class MaterialButtonLang extends StatelessWidget {
  final String? langeCode;
  final Function()? onPressed;

  MaterialButtonLang({this.onPressed, this.langeCode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.primaryColor,
        child: Text(
          langeCode!,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
