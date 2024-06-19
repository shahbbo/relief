import 'package:flutter/material.dart';
import 'package:relief/register/logInScreen.dart';
import 'package:relief/register/register.dart';

class logIn extends StatelessWidget {
  const logIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212529),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          const SizedBox(
            height: 159,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            child: Image.asset('asseets/logo.png'),
          ),
          const SizedBox(
            height: 157,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Register(),
                ),
              );
            },
            child: Container(
              width: 300,
              height: 56,
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFF8F9FA),
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF8F9FA),
                      fontSize: 22,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Text(
            'already a member ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFADB5BD),
              fontSize: 18,
              fontFamily: 'Barlow',
              fontWeight: FontWeight.w400,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: Container(
              width: 300,
              height: 56,
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: Color(0xFFD90429),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF8F9FA),
                      fontSize: 22,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'by signing up you confirm that you have read and \nagreed to RELIEF ',
                  style: TextStyle(
                    color: Color(0xFF6C757D),
                    fontSize: 14,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'terms',
                  style: TextStyle(
                    color: Color(0xFF6C757D),
                    fontSize: 14,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(
                    color: Color(0xFF6C757D),
                    fontSize: 14,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'privacy policy',
                  style: TextStyle(
                    color: Color(0xFF6C757D),
                    fontSize: 14,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    height: 0,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
