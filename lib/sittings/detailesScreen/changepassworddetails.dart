// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:relief/sittings/widgets/button.dart';
import 'package:relief/sittings/widgets/textfieldpassword.dart';

class changepassworddetails extends StatelessWidget {
  const changepassworddetails({super.key});

  static String id = 'changepassworddetails';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/images/Logo.png')),
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
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                      onPressed: () {},
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
                ),
              ),
              Button(
                text: 'Save',
              )
            ],
          ),
        ),
      ),
    );
  }
}
