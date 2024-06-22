import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/components/incareHeader.dart';
import 'package:relief/components/incareBody.dart';

class liveInCare extends StatelessWidget {
  liveInCare({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inCareHeaderCubit(),
      child: BlocConsumer<inCareHeaderCubit, headerState>(
        listener: (context, state) {},
        builder: (context, state) {
          // var cubit = inCareHeaderCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    inCareHeader(),
                    SizedBox(
                      height: 15,
                    ),
                    incareBody(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
