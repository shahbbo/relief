import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 15,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Color(0xFF212529),
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Ali Khaled',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6C757D),
                fontSize: 15,
                fontFamily: 'Barlow',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'The caregiver provided exceptional support, demonstrating compassion, professionalism, and unwavering dedication to their duties.',
          style: TextStyle(
            color: Color(0xFF343A40),
            fontSize: 14,
            fontFamily: 'Barlow',
            fontWeight: FontWeight.w400,
          ),
        ),

        Row(
          children: [
            Text(
              '18',
              style: TextStyle(
                color: Color(0xFF6C757D),
                fontSize: 14,
                fontFamily: 'Barlow',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: () {},
                child: Image.asset('asseets/Vector (1).png')),
          ],
        )
      ],
    );
  }
}