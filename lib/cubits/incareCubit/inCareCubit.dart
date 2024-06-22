import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/caregiver_view_details/caregiver_view_details_screen.dart';
import 'package:relief/caregiver_view_details_edit_profile/caregiver_view_details_edit_profile_view.dart';
import 'package:relief/caregiver_view_details_requests/caregiver_view_details_requests_viwe.dart';
import 'package:relief/caregiver_view_details_review/caregiver_view_details_review.dart';
import 'package:relief/homeScreen.dart';
import 'package:relief/screens/benefits.dart';
import 'package:relief/screens/howItWorks.dart';
import 'package:relief/screens/overview.dart';
import 'package:relief/screens/pricing.dart';
import 'package:relief/calendar.dart';
import 'package:relief/consset.dart';
import 'package:relief/screens/profileElder.dart';
import 'package:relief/sittings/SittingSS.dart';

import '../../shared/network/remote/dio_helper.dart';
part 'inCareStates.dart';

class inCareHeaderCubit extends Cubit<headerState> {
  inCareHeaderCubit() : super(InitialState());

  static inCareHeaderCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  // bool priceActive = false;

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
    elderprofile(),
    sittingSS(),
  ];

  List<Widget> mainScreensC = [
    CaregiverViewDetailsScreen(),
    CaregiverViewDetailsRequestsView(),
    CaregiverViewDetailsReview(),
    CaregiverViewDetailsEditProfileView(),
  ];


  TextEditingController addressController = TextEditingController();
  Future<void> getPlace({
    required dynamic lat,
    required dynamic lon ,
  }) async {
    emit(LoadingPlace());
    await DioHelper.getPlace(url: 'lat=$lat&lon=$lon').then((value) {
  /*    lats = lat ;
      lons = lon;*/
      addressController.text = value.data['display_name'] ;
      emit(SuccessPlace());
    }).catchError((onError) {
      if(onError is DioException){
        print('error : ${onError.response!.data}');
      }
      print('error : $onError');
      emit(ErrorPlace());
    });
  }
}
