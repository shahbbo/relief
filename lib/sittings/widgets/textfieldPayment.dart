// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class textfieldPayment extends StatelessWidget {
  String? text;
  bool obscureText;

  textfieldPayment({this.text, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: '♡',
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Color(0xffADB5BD)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xffBBD0FF)),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xffBBD0FF)),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
