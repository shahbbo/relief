import 'package:flutter/material.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

import '../../models/GetAprovedRequestsForPatient/RequestsForPatientModel.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key, required this.requestsForPatientModel, required this.caregiver});
  final RequestsForPatientModel requestsForPatientModel;
  final bool caregiver ;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  text: ' name :  ',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w700,

                  ),
                ),
                TextSpan(
                  text: caregiver ==true ?  requestsForPatientModel.userNamePatient : requestsForPatientModel.caregiverName,
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
                  text: inCareHeaderCubit.get(context).addressController.text,
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
                  text: 'phone number : ',
                  style: TextStyle(
                    color: Color(0xFF003049),
                    fontSize: 16,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w700,

                  ),
                ),
                TextSpan(
                  text: caregiver == true ? requestsForPatientModel.patientPhone : requestsForPatientModel.caregiverPhone,
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
                  text: '${requestsForPatientModel.appointmentDateTime?.day}/${requestsForPatientModel.appointmentDateTime?.month}  - ${requestsForPatientModel.appointmentDateTime?.hours}AM , ${requestsForPatientModel.determineThePeriodOfService?.amount} days',
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
    );
  }
}