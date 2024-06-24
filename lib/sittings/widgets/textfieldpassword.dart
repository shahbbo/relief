import 'package:flutter/material.dart';

class textfieldpassword extends StatefulWidget {
  final String? text;
  final bool obscureText;

  final TextEditingController oldPasswordElderController = TextEditingController();
  final TextEditingController newPasswordElderController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  textfieldpassword({
    this.text,
    this.obscureText = false,
    required TextEditingController? controller,
  });

  @override
  State<textfieldpassword> createState() => _textfieldpasswordState();
}

class _textfieldpasswordState extends State<textfieldpassword> {
  bool _isObscure3 = true;

  RegExp regex = RegExp(r'^(?=.[A-Za-z])(?=.[0-9])(?=.[!#?%$@]).{8,}$');

  @override
  Widget build(BuildContext context) {
    // var oldPasswordElderController;
    return TextFormField(
      obscuringCharacter: '*',
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
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your password';
        } else if (value.length < 8) {
          return 'Password must be at least 8 characters';
        } else if (regex.hasMatch(value) == false) {
          return 'Password must contain at least one uppercase letter, \n one lowercase letter, one number and one special character';
        }
        return null;
      },
    );
  }
}
