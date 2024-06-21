// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  VoidCallback? onpressed;
  String? text;

  Button({this.onpressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: onpressed,
        child: Container(
          width: 361,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffD90429),
              borderRadius: BorderRadius.circular(25)),
          child: Center(
              child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
        ),
      ),
    );
  }
}
