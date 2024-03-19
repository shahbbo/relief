import 'package:flutter/material.dart';

class howItWorks extends StatelessWidget {
  const howItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 627,
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      child: Column(
        children: [
          Container(
            width: 361,
            height: 187,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tell us what you need',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'firstly',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' Give us a call or get started online. Well ask you some simple questions and based on your answers well begin to match you with carers over the next 24 hours, for you to review in your MyRelief account.',
                          style: TextStyle(
                            color: Color(0xFF8D99AE),
                            fontSize: 16,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 361,
            height: 187,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Shape your solution',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'secondly ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Complete your care profile this allows our clinical team to confirm whether care can go ahead safely. At this step youll also receive details of the most suitable carers. ',
                          style: TextStyle(
                            color: Color(0xFF8D99AE),
                            fontSize: 16,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 361,
            height: 187,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Stay in control',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Third',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' Once care is in place you and your family can manage it from anywhere with your MyRelief account. And if you ever need to speak to someone, youll be assigned your own Family Support Specialist wholl happily answer any questions.',
                          style: TextStyle(
                            color: Color(0xFF8D99AE),
                            fontSize: 16,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
