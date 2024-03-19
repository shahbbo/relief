import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class incareBody extends StatelessWidget {
  incareBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = inCareHeaderCubit.get(context);
          print(cubit.currentIndex);
          return Container(
            height: 627,
            child: ListView(
              children: [
                cubit.contents[cubit.currentIndex],
              ],
            ),
          );
        });
  }
}
