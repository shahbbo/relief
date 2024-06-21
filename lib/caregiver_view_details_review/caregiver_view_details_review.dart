import 'package:flutter/material.dart';

import '../caregiver_view_details/widget/profile_caregiver.dart';
import 'widget/review_widget.dart';

class CaregiverViewDetailsReview extends StatelessWidget {
  const CaregiverViewDetailsReview({super.key});

  @override
  Widget build(BuildContext context) {
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
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ReviewWidget(),
                    );
                  },
                )
              ],
            ),
          ),
        ),
    );
  }
}



