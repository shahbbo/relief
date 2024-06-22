import 'package:flutter/material.dart';

class CardHolderName extends StatelessWidget {
  String? text;

  CardHolderName({this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      obscuringCharacter: '*',
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
