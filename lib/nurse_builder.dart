import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/components/nurse_tile.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class nurseBuilder extends StatelessWidget {
  nurseBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cubit.allUserDataCaregiver.length,
            itemBuilder: (BuildContext context, int index) {
              return nurse(nurseList: cubit.allUserDataCaregiver[index]);
            },
          ),
        );
      },
    );
  }
}
