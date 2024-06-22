import 'package:flutter/material.dart';
import 'package:relief/caregiver_view_details/widget/schedule_widget.dart';
import 'package:relief/components/erlder_name_photo.dart';

class calender extends StatelessWidget {
  const calender({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            elderNamePhoto(),
            SizedBox(height: 4),
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
    );
  }
}
