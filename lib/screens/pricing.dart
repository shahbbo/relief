import 'package:flutter/material.dart';
import 'package:relief/consset.dart';
import 'package:relief/screens/liveInPrice.dart';
import 'package:relief/screens/shortTPrice.dart';

class pricing extends StatelessWidget {
  pricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 11,
            right: 11,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  // width: 172,
                  height: 150,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F3EF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset('asseets/PaintBrushHousehold.png'),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        height: 49,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'household tasks',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF3E5C76),
                                  fontSize: 15,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'vacuuming and laundry',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF8D99AE),
                                fontSize: 10,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  // width: 172,
                  height: 150,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F3EF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset('asseets/Plant.png'),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        height: 66,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'meal times',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF3E5C76),
                                  fontSize: 15,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'preparing meals & dietary requirements',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF8D99AE),
                                  fontSize: 10,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            left: 11,
            right: 11,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  // width: 172,
                  height: 150,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F3EF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset('asseets/HandHeart.png'),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        height: 66,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'personal care',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF3E5C76),
                                  fontSize: 15,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'daily tasks, and medication',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF8D99AE),
                                  fontSize: 10,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  // width: 172,
                  height: 150,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F3EF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset('asseets/Users.png'),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        height: 66,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'companionship',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF3E5C76),
                                  fontSize: 15,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'help getting out and about to see friends',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF8D99AE),
                                  fontSize: 10,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Spacer(),
        Container(
          // width: 361,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: ShapeDecoration(
            color: Color(0xFFF6F3EF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 32,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Image.asset('asseets/Bell.png'),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 72,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Up to two nightly wake-ups',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF3E5C76),
                          fontSize: 20,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Occasional help with things like getting to the toilet or providing reassurance.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF8D99AE),
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: double.infinity,
          // width: 350,
          height: 105,
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.black,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(priceActice);
                  if (priceActice == true) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => liveInPrice(),
                        ));
                  } else if (priceActice == false) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => shortTPrice(),
                        ));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB91A13),
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
                      'book now ',
                      style: TextStyle(
                        color: Color(0xFFF8F9FA),
                        fontSize: 14,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}