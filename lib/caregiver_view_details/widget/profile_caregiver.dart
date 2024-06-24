import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class ProfileCaregiver extends StatelessWidget {
  const ProfileCaregiver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/caregiver.jpg'),
              ),
              Text(
                cubit.userDataCaregiver?.userData?.userName ?? '',
                style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 20,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                cubit.userDataCaregiver?.userData?.biography ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFADB5BD),
                  fontSize: 16,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}