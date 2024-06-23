// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relief/register/forgot_password.dart';
import 'package:relief/sittings/widgets/button.dart';
import 'package:relief/sittings/widgets/textfieldpassword.dart';

class changepassworddetails extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  static String id = 'changepassworddetails';

  TextEditingController oldPasswordElderController = TextEditingController();
  TextEditingController newPasswordElderController = TextEditingController();

  RegExp regex = RegExp(r'^(?=.[A-Za-z])(?=.[0-9])(?=.[!#?%$@]).{8,}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Change Password',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('asseets/Logoo.png')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Current Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: textfieldpassword(
                    text: 'Enter your current Password',
                    obscureText: true,
                    controller: oldPasswordElderController,
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'New Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: textfieldpassword(
                    text: 'Enter new Password',
                    obscureText: true,
                    controller: newPasswordElderController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Confirm New Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10),
                  child: textfieldpassword(
                    text: 'Retype the Password',
                    obscureText: true,
                    controller: newPasswordElderController,
                  ),
                ),
                Button(
                  text: 'Save',
                  onpressed: () {
                    print('Password: ${oldPasswordElderController.text}');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
