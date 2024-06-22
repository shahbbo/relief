import 'package:flutter/material.dart';

class CardHolderName extends StatelessWidget {
  final String? text;

  CardHolderName({required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: '*',
      keyboardType: TextInputType.name,
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
