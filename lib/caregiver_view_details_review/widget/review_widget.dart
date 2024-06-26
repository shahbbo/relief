import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../models/RatingsForCaregiver/RatingsForCaregiver.dart';

class ReviewWidget extends StatelessWidget {
  ReviewWidget({super.key, required this.ratingsForCaregiver});
  final RatingsForCaregiver ratingsForCaregiver ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            RatingBar.builder(
              initialRating: ratingsForCaregiver.info?.rating?.toDouble() ?? 0.0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              ignoreGestures: true,
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
              ratingsForCaregiver.patientData?.userNamePatient?.toString() ?? '',
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
          ratingsForCaregiver.info?.messageRating?.toString() ?? '',
          style: TextStyle(
            color: Color(0xFF343A40),
            fontSize: 14,
            fontFamily: 'Barlow',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 10,
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