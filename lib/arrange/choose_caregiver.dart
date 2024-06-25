import 'package:flutter/material.dart';
import 'package:relief/arrange/type_of_care.dart';

import '../nurse_builder.dart';

class ChooseCaregiver extends StatelessWidget {
  const ChooseCaregiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('   '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  // Image.asset('assets/Ellipse 20.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Available For Work',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff38b000)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
