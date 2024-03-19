import 'package:flutter/material.dart';
import 'package:relief/components/nurse_tile.dart';
import 'package:relief/models/NurseModel.dart';

class nurseBuilder extends StatelessWidget {
  nurseBuilder({super.key});

  final List<NurseModel> nurseList = [
    NurseModel(
      name: 'mahmoud ali',
      image: "asseets/nurse.png",
    ),
    NurseModel(
      name: 'mahmoud amr',
      image: "asseets/nurse.png",
    ),
    NurseModel(
      name: 'mahmoud baha',
      image: "asseets/nurse.png",
    ),
    NurseModel(
      name: 'mahmoud adel',
      image: "asseets/nurse.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: nurseList.length,
        itemBuilder: (BuildContext context, int index) {
          return nurse(nurseList: nurseList[index]);
        },
      ),
    );
  }
}
