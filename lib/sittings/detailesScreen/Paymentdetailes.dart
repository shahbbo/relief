// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:relief/sittings/widgets/button.dart';
import 'package:relief/sittings/widgets/textfieldPayment.dart';

class PaymentDetailes extends StatefulWidget {
  const PaymentDetailes({super.key});

  static String id = 'PaymentDetailes';

  @override
  State<PaymentDetailes> createState() => _PaymentDetailesState();
}

class _PaymentDetailesState extends State<PaymentDetailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Image.asset('asseets/Hands Cash.png'),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text.rich(
                TextSpan(
                  text: 'You Don’t Have Any Saved Payment Methods',
                  style: TextStyle(fontSize: 25, color: Color(0xff6C757D)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Add these in at checkout for a smoother experience!',
                style: TextStyle(fontSize: 20, color: Color(0xffADB5BD)),
              ),
            ),
            Button(
              text: 'Add One',
              onpressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        content: Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Card Number',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  height: 55,
                                  child: textfieldPayment(
                                    text: '**** **** **** ****',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Expiration',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Container(
                                            height: 55,
                                            width: 120,
                                            child: textfieldPayment(
                                              text: 'MM/YY',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'CVC',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Container(
                                            height: 55,
                                            width: 120,
                                            child: textfieldPayment(
                                              text: 'CVC',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  child: Text(
                                    'Cardholder Name',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  height: 55,
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    obscuringCharacter: '*',
                                    decoration: InputDecoration(
                                        labelText: "enter your name",
                                        labelStyle:
                                            TextStyle(color: Color(0xffADB5BD)),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1,
                                              color: Color(0xffBBD0FF)),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1,
                                              color: Color(0xffBBD0FF)),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        )),
                                  ),
                                ),
                                Button(
                                  text: 'Save',
                                  onpressed: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
