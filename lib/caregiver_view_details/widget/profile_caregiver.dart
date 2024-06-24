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
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: cubit.userDataCaregiver?.userData
                      ?.profilePhoto !=
                      null
                      ? NetworkImage(cubit.userDataCaregiver?.userData
                      ?.profilePhoto
                      .toString() ??
                      '')
                      : const NetworkImage(
                    'https://t3.ftcdn.net/jpg/03/29/17/78/360_F_329177878_ij7ooGdwU9EKqBFtyJQvWsDmYSfI1evZ.jpg',
                  ),
                  child: cubit.userDataCaregiver?.userData
                      ?.profilePhoto !=
                      null
                      ? null
                      : Text(
                    cubit.userDataCaregiver?.userData
                        ?.userName?[0]
                        .toUpperCase() ??
                        '',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
             /* CircleAvatar(
                radius: 50,
                backgroundImage: ,
              ),*/
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