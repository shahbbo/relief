import 'package:flutter/material.dart';

class textfieldpassword extends StatefulWidget {
  String? text;
  bool obscureText;

  textfieldpassword({this.text, this.obscureText = false});

  @override
  State<textfieldpassword> createState() => _textfieldpasswordState();
}

class _textfieldpasswordState extends State<textfieldpassword> {
  bool _isObscure3 = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: '♡',
      obscureText: _isObscure3,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(_isObscure3 ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure3 = !_isObscure3;
                });
              }),
          labelText: widget.text,
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
