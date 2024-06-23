import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

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
    required dateOfBirth,
    required String phone,
    required String password,
    required String re_password,
    required String healthRecordText,
    required String gender,
    var longitude ,
    var latitude,
  }) async {
    emit(RegisterPatientLoadingState());
    await DioHelper.postData(
      url: AppStrings.registerPatient,
      data:
      {
        'username': username,
        'email': email,
        'dateOfBirth': dateOfBirth,
        'phone': phone,
        'password': password,
        're_password': re_password,
        'healthRecordText': healthRecordText,
        'gender' : gender,
        'longitude' : longitude,
        'latitude' : latitude,
      },
    ).then((value) {
      print(value.data);
      emit(RegisterPatientSuccessState(value.data));
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(RegisterPatientErrorState(onError.response!.data['message']));
      }
    });
  }
}
