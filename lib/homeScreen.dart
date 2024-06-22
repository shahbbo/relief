import 'package:flutter/material.dart';
import 'package:relief/InCare.dart';
import 'package:relief/components/erlder_name_photo.dart';
import 'package:relief/nurse_builder.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 8),
          elderNamePhoto(),
          SizedBox(height: 4),
          SizedBox(
            width: 325,
            height: 44,
            child: TextField(
              onSubmitted: (value) {
                print(value);
              },
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Color(0xFFADB5BD),
                  fontSize: 18,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFADB5BD),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFADB5BD),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset('asseets/Ellipse 20.png'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Available For Work',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff38b000)),
              ),
            ],
          ),
          SizedBox(height: 5),
          nurseBuilder(),
          Incare(),
        ],
        ),
    );
  }
}
