import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  CustomTextTitleAuth({Key? key, this.text}) : super(key: key);

  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style:
          Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black),
    );
  }
}
