import 'package:flutter/material.dart';
import 'package:relief/arrange/arrange_care.dart';

class shortTPrice extends StatelessWidget {
  shortTPrice({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFC),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 361,
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
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
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: 361,
                  height: 550,
                  padding: const EdgeInsets.all(15),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F3EF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                  'asseets/cryptocurrency-color_r.png'),
                            ),
                            const SizedBox(width: 15),
                            Text(
                              'short-term care ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 220,
                        height: 41,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'From',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF8D99AE),
                                      fontSize: 14,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                        '200 EGP',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF0096C7),
                                          fontSize: 16,
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        'P/D',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF8D99AE),
                                          fontSize: 14,
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Relief can arrange short-term respite care for shorter periods. A carer will move into the home and provide expert care.',
                          style: TextStyle(
                            color: Color(0xFF3E5C76),
                            fontSize: 16,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: double.infinity,
                        height: 220,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 24,
                                      height: 24,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                          'asseets/CheckCircle (2).png')),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    'Fast turnaround ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 16,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Image.asset(
                                        'asseets/CheckCircle (2).png'),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    'No weekend or bank holiday surcharge',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Image.asset(
                                        'asseets/CheckCircle (2).png'),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    '2x nightly wake-ups included',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 8,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Image.asset(
                                        'asseets/CheckCircle (2).png'),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    'No lengthy contracts',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 10,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Image.asset(
                                        'asseets/CheckCircle (2).png'),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    'No joining fees ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 12,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Container(
                          width: 290,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFD90429),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: Color(0xFF8D99AE),
                                  width: 1,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArrangeCare()));
                            },
                            child: Text(
                              '   Get Started   ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
