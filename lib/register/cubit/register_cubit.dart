import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/network/remote/dio_helper.dart';
import '../../shared/resources/string_manager.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  TextEditingController nameElderController = TextEditingController();
  TextEditingController emailElderController = TextEditingController();
  TextEditingController passwordElderController = TextEditingController();
  TextEditingController phoneElderController = TextEditingController();


  Future<void> patientRegister({
    required String username,
    required String email,
    required String dateOfBirth,
    required String phone,
    required String password,
    required String rePassword,
    required String healthRecordText,
    required String gender,
    dynamic longitude ,
    dynamic latitude ,
  }) async {
    emit(RegisterPatientLoadingState());
    await DioHelper.postData(
      url: AppStrings.registerPatient,
      data:
      {
        'userName': username,
        'email': email,
        'dateOfBirth': dateOfBirth,
        'phone': phone,
        'password': password,
        're_password': rePassword,
        'healthRecordText': healthRecordText,
        'gender' : gender,
        'longitude' : longitude,
        'latitude' : latitude,
      },
    ).then((value) {
      emit(RegisterPatientSuccessState(value.data));
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(RegisterPatientErrorState(onError.response!.data['message']));
      }
    });
  }


  Future<void> patientLogin({
    required String email,
    required String password,
  }) async {
    emit(LoginPatientLoadingState());
    await DioHelper.postData(
      url: AppStrings.loginPatient,
      data:
      {
        'email': email,
        'password': password,
      },
    ).then((value) {
      print(value.data);
      emit(LoginPatientSuccessState(value.data));
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(LoginPatientErrorState(onError.response!.data['message']));
      }
    });
  }
}
