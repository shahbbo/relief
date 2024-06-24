import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/components/navBar.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class elderApp extends StatelessWidget {
  const elderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
        listener: (context, state) {
      // TODO: implement listener
    }, builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: inCareHeaderCubit
                    .get(context)
                    .mainScreens[inCareHeaderCubit.get(context).currentIndex],
              ),
            ],
          ),
        ),
        bottomNavigationBar: navBar(),
      );
    });
  }
}
