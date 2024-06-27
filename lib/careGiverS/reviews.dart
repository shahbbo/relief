import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:relief/careGiverS/cubit/review_cubit.dart';

import '../models/RatingsForCaregiver/RatingsForCaregiver.dart';
import '../models/RatingsMessageForPateint/RatingsMessageForPateintModel.dart';

class Reviews extends StatefulWidget {
  Reviews({super.key, required this.id});
  final String id;
  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int valueIndex = 0;
  @override
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double averageRating = 0;
    return BlocProvider(
      create: (context) => ReviewCubit()
        ..getMessageRatingsForCaregiver(id: widget.id)
        ..getAllRatingsMessageForPatient(id: widget.id),
      child: BlocConsumer<ReviewCubit, ReviewState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ReviewCubit.get(context);
          if (cubit.ratingsForCaregiver.isNotEmpty) {
            averageRating = cubit.ratingsForCaregiver
                .map((e) => e.info?.rating?.toDouble() ?? 0)
                .reduce((value, element) => value + element) /
                cubit.ratingsForCaregiver.length;
          }
          return Scaffold(
            appBar: PreferredSize(
                preferredSize:
                    const Size.fromHeight(40.0), // here the desired height
                child: AppBar(
                  title: const Text(
                    'Reviews',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        averageRating.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xff6c757d),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RatingBar.builder(
                        initialRating: averageRating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        cubit.ratingsForCaregiver.length.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff6c757d),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Reviews',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff6c757d),
                          )),
                    ],
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Color(0xff0096c7),
                    tabs: [
                      Tab(
                        child:
                        Text(
                          'All',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: valueIndex == 0
                                  ? Color(0xff0096c7)
                                  : Color(0xff212529)),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'My Reviews',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: valueIndex == 1
                                  ? Color(0xff0096c7)
                                  : Color(0xff212529)),
                        ),
                      ),
                    ],
                    onTap: (value) {
                      setState(() {
                        valueIndex = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  valueIndex == 0
                      ? Expanded(
                          child: ListView.builder(
                          itemCount: cubit.ratingsForCaregiver.length,
                          itemBuilder: (context, index) {
                            return Review(
                              ratingsForCaregiver:
                                  cubit.ratingsForCaregiver[index],
                            );
                          },
                        ))
                      : Expanded(
                          child: ListView.builder(
                            itemCount:
                                cubit.ratingsMessageForPateintModel.length,
                            itemBuilder: (context, index) {
                              return MyReview(
                                ratingsMessageForPateintModel:
                                    cubit.ratingsMessageForPateintModel[index],
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyReview extends StatelessWidget {
  MyReview({super.key, required this.ratingsMessageForPateintModel});
  final RatingsMessageForPateintModel ratingsMessageForPateintModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            RatingBar.builder(
              initialRating:
                  ratingsMessageForPateintModel.info?.rating?.toDouble() ?? 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              ignoreGestures: true,
              itemSize: 20,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            Text(
              'You',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff6c757d)),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          ratingsMessageForPateintModel.info?.messageRating ?? '',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff343a40),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Image.asset('asseets/Vector (1).png'),
            const SizedBox(
              width: 6,
            ),
            const Text(
              'Helpful',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff6c757d),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Image.asset('asseets/Vector (2).png'),
            const SizedBox(
              width: 6,
            ),
            const Text(
              'Not Helpful',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff6c757d),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}

class Review extends StatelessWidget {
  Review({Key? key, required this.ratingsForCaregiver}) : super(key: key);
  final RatingsForCaregiver ratingsForCaregiver;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            RatingBar.builder(
              initialRating: ratingsForCaregiver.info?.rating?.toDouble() ?? 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              ignoreGestures: true,
              itemSize: 20,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            Text(
              ratingsForCaregiver.patientData?.userNamePatient ?? '',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff6c757d)),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          ratingsForCaregiver.info?.messageRating ?? '',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff343a40),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Image.asset('asseets/Vector (1).png'),
            const SizedBox(
              width: 6,
            ),
            const Text(
              'Helpful',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff6c757d),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Image.asset('asseets/Vector (2).png'),
            const SizedBox(
              width: 6,
            ),
            const Text(
              'Not Helpful',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff6c757d),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
