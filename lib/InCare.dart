import 'package:flutter/material.dart';
import 'package:relief/consset.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/screens/liveInCare.dart';
import 'package:relief/screens/speakToAnExp.dart';

class Incare extends StatelessWidget {
  const Incare({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 450,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 215,
              padding: const EdgeInsets.all(20),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFF212529),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'live-in care ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF8F9FA),
                              fontSize: 22,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 209,
                            child: Text.rich(
                              TextSpan(
                                text:
                                    'Live-in care preserves your lifestyle while providing necessary assistance.',
                                style: TextStyle(
                                  color: Color(0xFFCED4DA),
                                  fontSize: 14,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 95,
                        height: 100,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("asseets/LiveInCare.png"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => speakToAnExp()),
                            );
                          },
                          child: Container(
                            // width: 151,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: ShapeDecoration(
                              color: Color(0xFFB91A13),
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
                                  'speak to an expert',
                                  style: TextStyle(
                                    color: Color(0xFFF8F9FA),
                                    fontSize: 13,
                                    fontFamily: 'Barlow',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        GestureDetector(
                          onTap: () {
                            inCareHeaderCubit
                                .get(context)
                                .changePriceActive(priceActive: true);
                            print(priceActice);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => liveInCare()),
                            );
                          },
                          child: Container(
                            // width: 101,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFF8F9FA)),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'learn more',
                                  style: TextStyle(
                                    color: Color(0xFFF8F9FA),
                                    fontSize: 13,
                                    fontFamily: 'Barlow',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 220,
              padding: const EdgeInsets.all(20),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFF212529),
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
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'short-term care ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF8F9FA),
                                fontSize: 22,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 209,
                              child: Text.rich(
                                TextSpan(
                                  text:
                                      'Short-term care provides the same level of care as live-in care, but for a shorter period of time.',
                                  style: TextStyle(
                                  color: Color(0xFFCED4DA),
                                    fontSize: 14,
                                    fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 95,
                          height: 100,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("asseets/ShortTermCare.png"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => speakToAnExp()),
                            );
                          },
                          child: Container(
                            // width: 151,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: ShapeDecoration(
                              color: Color(0xFFB91A13),
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
                                  'speak to an expert',
                                  style: TextStyle(
                                    color: Color(0xFFF8F9FA),
                                    fontSize: 13,
                                    fontFamily: 'Barlow',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        GestureDetector(
                          onTap: () {
                            inCareHeaderCubit
                                .get(context)
                                .changePriceActive(priceActive: false);
                            print(priceActice);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => liveInCare()),
                            );
                          },
                          child: Container(
                            // width: 101,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFF8F9FA)),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'learn more',
                                  style: TextStyle(
                                    color: Color(0xFFF8F9FA),
                                    fontSize: 13,
                                    fontFamily: 'Barlow',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
