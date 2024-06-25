import 'package:flutter/material.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

import '../../models/PendingRequest/PendingRequestModel.dart';

class ScheduleRequestsWidget extends StatelessWidget {
  const ScheduleRequestsWidget({super.key, required this.pendingRequestModel});
  final PendingRequestModel pendingRequestModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Color(0xFFF6F3EF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'name : ',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    TextSpan(
                      text: pendingRequestModel.userNamePatient,
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'location : ',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    TextSpan(
                      text: '5th Settlement, egypt',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' phone number : ',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    TextSpan(
                      text: pendingRequestModel.patientPhone,
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'date and duration : ',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    TextSpan(
                      text: '${pendingRequestModel.appointmentDateTime?.day}/${pendingRequestModel.appointmentDateTime?.month}  - ${pendingRequestModel.appointmentDateTime?.hours}AM , ${pendingRequestModel.determineThePeriodOfService?.amount} days',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF8D99AE)),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                pendingRequestModel.role == 'public' ?
                    inCareHeaderCubit.get(context).rejectPubicRequest(id : pendingRequestModel.id ?? '')
                    :  inCareHeaderCubit.get(context).rejectPrivateRequest(id : pendingRequestModel.id ?? '');
              },
              child: Text(
                '    Cancel    ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                pendingRequestModel.role == 'public' ?
                    inCareHeaderCubit.get(context).approvePubicRequest(id : pendingRequestModel.id ?? '')
                    :  inCareHeaderCubit.get(context).approvePrivateRequest(id : pendingRequestModel.id ?? '');
              },
              child: Text(
                '    Approve    ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD90429),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}