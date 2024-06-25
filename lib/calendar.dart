import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/caregiver_view_details/widget/schedule_widget.dart';
import 'package:relief/components/erlder_name_photo.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class calender extends StatelessWidget {
  const calender({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
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
                  itemCount: cubit.requestsForPatientModel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ScheduleWidget(
                        requestsForPatientModel:
                            cubit.requestsForPatientModel[index],
                        caregiver: false,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
