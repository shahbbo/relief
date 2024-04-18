import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/homeScreen.dart';
import 'package:relief/screens/benefits.dart';
import 'package:relief/screens/howItWorks.dart';
import 'package:relief/screens/overview.dart';
import 'package:relief/screens/pricing.dart';
import 'package:relief/calendar.dart';
import 'package:relief/events.dart';
import 'package:relief/sittings.dart';

part 'inCareStates.dart';

class inCareHeaderCubit extends Cubit<headerState> {
  inCareHeaderCubit() : super(InitialState());

  static inCareHeaderCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  bool priceActice = false;

  void changeColors({required int index}) {
    currentIndex = index;
    print(currentIndex);
    emit(ChangeCurrentIndex());
  }

  void changePriceActive({required bool priceActive}) {
    priceActice = priceActive;
    emit(ChangePriceActive());
  }

  List<Widget> contents = [
    overview(),
    howItWorks(),
    benefits(),
    pricing(),
  ];

  List<Widget> mainScreens = [
    homeScreen(),
    calender(),
    events(),
    sittings(),
  ];
// void changeContent ({required int index}){
//   switch(index){
//     case 0:
//       emit(InitialState());
//       break;
//     case 1:
//       emit(howItWorksST());
//       break;
//     case 2:
//       emit(benefitsST());
//       break;
//     case 3:
//       emit(pricingST());
//       break;
//     case 4:
//       emit(fqaST());
//       break;
//   }
// }
}
