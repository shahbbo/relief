import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Color(0xFFF6F3EF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'name :',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w700,

                  ),
                ),
                TextSpan(
                  text: ' ali khaled',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'location :',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w700,

                  ),
                ),
                TextSpan(
                  text: '5th Settlement, egypt',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'phone number :',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w700,

                  ),
                ),
                TextSpan(
                  text: '01023659988',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'date and duration :',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w700,

                  ),
                ),
                TextSpan(
                  text: '15/6  - 3AM , 15 days',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w500,

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