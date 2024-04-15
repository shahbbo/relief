import 'package:flutter/material.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class inCareHeader extends StatelessWidget {
  inCareHeader({super.key});

  final List<String> titles = [
    'Overview',
    'How it works',
    'Benefits',
    'Pricing',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return Column(
          children: [
            Container(
              width: 361,
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("asseets/Ellipse 1.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ListView.builder(
                  itemCount: titles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          cubit.changeColors(index: index);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: cubit.currentIndex == index
                              ? Colors.black
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(
                              color: Color(0xFFBBD0FF),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Text(
                          titles[index],
                          style: TextStyle(
                            color: cubit.currentIndex == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: 14,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        );
      },
    );
  }
}
