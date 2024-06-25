import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/components/navBarCarer.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class carerApp extends StatelessWidget {
  const carerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
        listener: (context, state) {}, builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: inCareHeaderCubit.get(context).mainScreensC[
                    inCareHeaderCubit.get(context).currentIndex],
              ),
            ],
          ),
        ),
        bottomNavigationBar: navBarCarer(),
      );
    });
  }
}
