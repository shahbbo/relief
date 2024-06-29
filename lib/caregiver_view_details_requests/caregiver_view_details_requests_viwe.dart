import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

import '../caregiver_view_details/widget/profile_caregiver.dart';
import 'widget/schedule_requests_widget.dart';

class CaregiverViewDetailsRequestsView extends StatelessWidget {
  const CaregiverViewDetailsRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {
        if(state is ApprovePubicRequestSuccessState){
          inCareHeaderCubit.get(context).caregiverAcceptRequest();
          inCareHeaderCubit.get(context).getApprovedRequestsForCaregiver();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Request Approved'),
            ),
          );
        }
        else if(state is ApprovePubicRequestErrorState){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
        else if(state is RejectPubicRequestSuccessState){
          inCareHeaderCubit.get(context).caregiverAcceptRequest();
          inCareHeaderCubit.get(context).getApprovedRequestsForCaregiver();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Request Rejected'),
            ),
          );
        }
        else if(state is RejectPubicRequestErrorState){

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
        else if(state is ApprovePrivateRequestSuccessState){
          inCareHeaderCubit.get(context).caregiverAcceptRequest();
          inCareHeaderCubit.get(context).getApprovedRequestsForCaregiver();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Request Approved'),
            ),
          );
        }
        else if(state is ApprovePrivateRequestErrorState){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
        else if(state is RejectPrivateRequestSuccessState){
          inCareHeaderCubit.get(context).caregiverAcceptRequest();
          inCareHeaderCubit.get(context).getApprovedRequestsForCaregiver();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Request Rejected'),
            ),
          );
        }
        else if(state is RejectPrivateRequestErrorState){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
                  cubit.pendingRequestModel.length == 0 ?  Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'No Requests',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ): ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: cubit.pendingRequestModel.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ScheduleRequestsWidget(
                          pendingRequestModel: cubit.pendingRequestModel[index],
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
    );
  }
}

