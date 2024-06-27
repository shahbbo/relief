import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:relief/careGiverS/care_giver.dart';

import '../models/GetAllUserDataCaregiver/GetAllUserDataCaregiver.dart';

class nurse extends StatelessWidget {
  nurse({super.key, required this.nurseList});

  final GetAllUserDataCaregiver nurseList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: 247,
      height: 180,
      decoration: ShapeDecoration(
        color: Color(0xFFF6F3EF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  // width: 100,
                  height: 67,
                  decoration: ShapeDecoration(
                 /*   image: DecorationImage(
                      image: AssetImage('https://t3.ftcdn.net/jpg/03/29/17/78/360_F_329177878_ij7ooGdwU9EKqBFtyJQvWsDmYSfI1evZ.jpg'),
                      fit: BoxFit.cover,
                    ),*/
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text('${nurseList.userName?[0]}${nurseList.userName?[1]}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                    ),
                                  ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nurseList.userName ?? '',
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.20000000298023224),
                              fontSize: 15,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Caregiver',
                            style: TextStyle(
                              color: Color(0xFF3E5C76),
                              fontSize: 14,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          RatingBar.builder(
                              allowHalfRating: true,
                              initialRating: nurseList.averageRating?.toDouble() ?? 0,
                              itemSize: 15,
                              itemCount: 5,
                              direction: Axis.horizontal,
                              itemPadding: EdgeInsets.symmetric(horizontal: 3),
                              itemBuilder: (context, index) {
                                switch (index) {
                                  case 0:
                                    return Icon(
                                      Icons.sentiment_very_dissatisfied,
                                      color: Colors.red,
                                    );
                                  case 1:
                                    return Icon(
                                      Icons.sentiment_dissatisfied,
                                      color: Colors.redAccent,
                                    );
                                  case 2:
                                    return Icon(
                                      Icons.sentiment_neutral,
                                      color: Colors.amber,
                                    );
                                  case 3:
                                    return Icon(
                                      Icons.sentiment_satisfied,
                                      color: Colors.lightGreen,
                                    );
                                  case 4:
                                    return Icon(
                                      Icons.sentiment_very_satisfied,
                                      color: Colors.green,
                                    );
                                  default:
                                    return Container();
                                }
                              },
                              onRatingUpdate: (rating) {})
                        ])),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CareGiver(
                    id:  nurseList.id ?? '',
                  )));
            },
            child: Container(
              width: 247,
              height: 32,
              decoration: ShapeDecoration(
                color: Color(0xFFFFFFFC),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFADB5BD)),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  ' view details ',
                  style: TextStyle(
                    color: Color(0xFF3E5C76),
                    fontSize: 14,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
