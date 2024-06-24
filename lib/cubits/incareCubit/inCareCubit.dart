import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:relief/caregiver_view_details/caregiver_view_details_screen.dart';
import 'package:relief/caregiver_view_details_edit_profile/caregiver_view_details_edit_profile_view.dart';
import 'package:relief/caregiver_view_details_requests/caregiver_view_details_requests_viwe.dart';
import 'package:relief/caregiver_view_details_review/caregiver_view_details_review.dart';
import 'package:relief/homeScreen.dart';
import 'package:relief/models/UserDataCarer/UserDataCaregiver.dart';
import 'package:relief/screens/benefits.dart';
import 'package:relief/screens/howItWorks.dart';
import 'package:relief/screens/overview.dart';
import 'package:relief/screens/pricing.dart';
import 'package:relief/calendar.dart';
import 'package:relief/consset.dart';
import 'package:relief/screens/profileElder.dart';
import 'package:relief/sittings/SittingSS.dart';

import '../../models/UserDataPatient/UserDataPatient.dart';
import '../../shared/network/remote/dio_helper.dart';
import '../../shared/resources/string_manager.dart';
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
    Location location = Location();
    LocationData locationData;
    locationData = await location.getLocation();
    await DioHelper.getPlace(url: 'lat=${locationData.latitude}&lon=${locationData.longitude}').then((value) {
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


  UserDataPatient? userDataPatient;
  Future<void> getUserDataPatient({
    required String token,
  }) async {
    emit(PatientGetUserLoadingState());
    await DioHelper.getDate(
      url: '${AppStrings.patientGetUser}/$token',
    ).then((value) {
      userDataPatient = UserDataPatient.fromJson(value.data);
      emit(PatientGetUserSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientGetUserErrorState(onError.response!.data['message']));
      }
    });
  }


  UserDataCaregiver? userDataCaregiver;
  Future<void> getUserCaregiver({
    required String token,
  }) async {
    emit(CaregiverGetUserLoadingState());
    await DioHelper.getDate(
      url: '${AppStrings.carerGetUser}/$token',
    ).then((value) {
      userDataCaregiver = UserDataCaregiver.fromJson(value.data);
      emit(CaregiverGetUserSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(CaregiverGetUserErrorState(onError.response!.data['message']));
      }
    });
  }
}
