import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

import '../careGiverS/care_giver.dart';
import '../models/GetAllUserDataCaregiver/GetAllUserDataCaregiver.dart';

class ChooseCaregiver extends StatelessWidget {
  const ChooseCaregiver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Choose Caregiver'),
          ),
          body: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        // Image.asset('assets/Ellipse 20.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Available For Work',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff38b000)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemCount: cubit.allUserDataCaregiver.length,
              itemBuilder: (BuildContext context, int index) {
                return Nurse(nurseList: cubit.allUserDataCaregiver[index]);
              },
            ),
          ]),
        );
      },
    );
  }
}


class Nurse extends StatelessWidget {
  Nurse({super.key, required this.nurseList});

  final GetAllUserDataCaregiver nurseList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
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
                    height: 70,
                    decoration: ShapeDecoration(
                      // color: Color(0xFF3E5C76),
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
                width: double.infinity,
                height: 50,
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
      ),
    );
  }
}
