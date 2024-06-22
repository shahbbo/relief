// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:relief/sittings/widgets/button.dart';
import 'package:relief/sittings/widgets/card_holder_name.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('asseets/Hands Cash.png'),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'You don’t have any saved payment methods',
              style: TextStyle(fontSize: 22, color: Color(0xff6C757D)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Add these in at checkout for a smoother experience!',
              style: TextStyle(fontSize: 18, color: Color(0xffADB5BD)),
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
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Card Number',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                height: 55,
                                width: 300,
                                child: textfieldPayment(
                                  text: '**** **** **** ****',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Text(
                                            'Expiration',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Container(
                                          height: 55,
                                          width: 105,
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
                                          padding: const EdgeInsets.only(bottom: 8.0),
                                          child: Text(
                                            'CVV',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Container(
                                          height: 55,
                                          width: 105,
                                          child: textfieldPayment(
                                            text: 'CVV',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Cardholder Name',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                height: 55,
                                width: 300,
                                child: CardHolderName(
                                  text: 'Cardholder Name',
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
    );
  }
}
