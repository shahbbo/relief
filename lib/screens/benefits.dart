import 'package:flutter/material.dart';

class benefits extends StatelessWidget {
  const benefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 610,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Container(
              height: 65,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/ReceiptX.png')),
                  const SizedBox(width: 25),
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'No Surcharges On Bank Holidays Or Weekends',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/CheckCircle.png')),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(width: 1, color: Color(0xFFBBD0FF)),
              ),
            ),
            child: Container(
              height: 65,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/Timer.png')),
                  const SizedBox(width: 25),
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'A One Week Trial Period Cancel Care Anytime In The First 7 Days',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/CheckCircle.png')),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Container(
              height: 65,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/EyeSlash.png')),
                  const SizedBox(width: 25),
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'An Agreed Weekly Rate, With No Unexpected Extra Costs',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/CheckCircle.png')),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(width: 1, color: Color(0xFFBBD0FF)),
              ),
            ),
            child: Container(
              height: 65,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/FileText.png')),
                  const SizedBox(width: 25),
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'No Lengthy Contracts We Only Require A Two Week Notice Period',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/CheckCircle.png')),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Container(
              height: 65,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/Money.png')),
                  const SizedBox(width: 25),
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'No Exit Fees',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/CheckCircle.png')),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(width: 1, color: Color(0xFFBBD0FF)),
              ),
            ),
            child: Container(
              height: 65,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/Moon.png')),
                  const SizedBox(width: 25),
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'Up To 2x Nightly Wake-Ups Included',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Image.asset('asseets/CheckCircle.png')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
