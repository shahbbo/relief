import 'package:flutter/material.dart';
import 'package:relief/InCare.dart';
import 'package:relief/nurse_builder.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFC),
        body: Column(
          children: [
            const SizedBox(height: 14),
            Container(
              // width: 361,
              height: 51,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          // width: 148,
                          child: Text(
                            'Hello Mr. Mohamed ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.20000000298023224),
                              fontSize: 18,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '5th Settlement, egypt',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3E5C76),
                            fontSize: 14,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 152),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("asseets/Ellipse 1.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29),
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
            SizedBox(height: 24),
            nurseBuilder(),
            Incare(),
          ],
        ),
      ),
    );
  }
}
