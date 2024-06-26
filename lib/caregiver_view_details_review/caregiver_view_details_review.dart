import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/careGiverS/cubit/review_cubit.dart';

import '../caregiver_view_details/widget/profile_caregiver.dart';
import 'widget/review_widget.dart';

class CaregiverViewDetailsReview extends StatelessWidget {
  const CaregiverViewDetailsReview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewCubit()..getMessageRatingsForCaregiver(id: ''),
      child: BlocConsumer<ReviewCubit, ReviewState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ReviewCubit.get(context);
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    ProfileCaregiver(),
                    SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: cubit.ratingsForCaregiver.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReviewWidget(
                            ratingsForCaregiver: cubit.ratingsForCaregiver[index],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



