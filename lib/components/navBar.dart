import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class navBar extends StatelessWidget {
  navBar({
    super.key,
  });

  final List<String> iconsOn = [
    'asseets/HouseOn.png',
    'asseets/CalendarBlankOn.png',
    'asseets/profileOn.png',
    'asseets/SittingOn.png',
  ];

  final List<String> iconsOff = [
    'asseets/HouseOff.png',
    'asseets/CalendarBlankOff.png',
    'asseets/profileOff.png',
    'asseets/SittingOff.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return PopScope(
          canPop: cubit.currentIndex != 0 ? false : true,
          onPopInvoked: (value){
            if(cubit.currentIndex != 0) {
              cubit.changeColors(index: 0);
            } else {
              Navigator.pop(context);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 361,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                decoration: ShapeDecoration(
                  color: Color(0xFF212529),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: iconsOn.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeColors(index: index);
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: cubit.currentIndex == index
                                ? Image.asset(iconsOn[index])
                                : Image.asset(iconsOff[index]),
                          ),
                        ),
                      );
                    })),
          ),
        );
      },
    );
  }
}
