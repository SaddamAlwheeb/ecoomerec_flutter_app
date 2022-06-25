import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  CustomTextBodyAuth({Key? key, this.text}) : super(key: key);

  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
    );
  }
}
