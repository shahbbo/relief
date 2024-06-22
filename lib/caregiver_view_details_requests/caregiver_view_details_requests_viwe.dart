import 'package:flutter/material.dart';

import '../caregiver_view_details/widget/profile_caregiver.dart';
import 'widget/schedule_requests_widget.dart';

class CaregiverViewDetailsRequestsView extends StatelessWidget {
  const CaregiverViewDetailsRequestsView({super.key});

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
                Text(
                ' Requests  ',
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
                      child: ScheduleRequestsWidget(),
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
