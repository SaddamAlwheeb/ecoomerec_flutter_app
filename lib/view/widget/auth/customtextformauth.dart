import 'package:flutter/material.dart';

class CustonTextFormAuth extends StatelessWidget {
  CustonTextFormAuth(
      {Key? key,
      this.labeltext,
      this.iconData,
      this.hinttext,
      this.mycontroller})
      : super(key: key);
  String? labeltext;
  String? hinttext;
  IconData? iconData;
  final TextEditingController? mycontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
          label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(labeltext!),
          ),
          hintText: hinttext!,
          alignLabelWithHint: true,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            gapPadding: 20,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
