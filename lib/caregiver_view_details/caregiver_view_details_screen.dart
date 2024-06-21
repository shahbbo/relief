import 'package:flutter/material.dart';
import 'package:relief/caregiver_view_details/widget/schedule_widget.dart';

import 'widget/profile_caregiver.dart';

class CaregiverViewDetailsScreen extends StatelessWidget {
  const CaregiverViewDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                Text(
                  'Your Schedule',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w600,
                  ),
                ),

                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ScheduleWidget(),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




