import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/models/UserDataPatient/UserDataPatient.dart';

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

  TextEditingController nameCaregiverController = TextEditingController();
  TextEditingController emailCaregiverController = TextEditingController();
  TextEditingController passwordCaregiverController = TextEditingController();
  TextEditingController phoneCaregiverController = TextEditingController();

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

  Future<void> carerRegister({
    required String username,
    required String email,
    required String password,
    required String rePassword,
    required String gender,
    required String dateOfBirth,
    required String phone,
    required String doYouSmoke,
    required String canYouDrive,
    required String biography,
    dynamic longitude,
    dynamic latitude,
  }) async {
    emit(RegisterCarerLoadingState());
    await DioHelper.postData(
      url: AppStrings.registerCarer,
      data: {
        'userName': username,
        'email': email,
        'password': password,
        're_password': rePassword,
        'gender': gender,
        'dateOfBirth': dateOfBirth,
        'phone': phone,
        'doYouSmoke': doYouSmoke,
        'canYouDrive': canYouDrive,
        'biography': biography,
        'longitude': longitude,
        'latitude': latitude,
      },
    ).then((value) {
      emit(RegisterCarerSuccessState(value.data));
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(RegisterCarerErrorState(onError.response!.data['message']));
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
      emit(LoginPatientSuccessState(value.data));
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(LoginPatientErrorState(onError.response!.data['message']));
      }
    });
  }


  Future<void> caregiverLogin({
    required String email,
    required String password,
  }) async {
    emit(LoginCaregiverLoadingState());
    await DioHelper.postData(
      url: AppStrings.loginCaregiver,
      data:
      {
        'email': email,
        'password': password,
      },
    ).then((value) {
      print(value.data);
      emit(LoginCaregiverSuccessState(value.data));
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(LoginCaregiverErrorState(onError.response!.data['message']));
      }
    });
  }


  Future<void> patientForgotPassword({
    required String email,
  }) async {
    emit(PatientForgotPasswordLoadingState());
    await DioHelper.postData(
      url: AppStrings.patientForgotPassword,
      data:
      {
        'email': email,
      },
    ).then((value) {
      print(value.data);
      emit(PatientForgotPasswordSuccessState(value.data));
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientForgotPasswordErrorState(onError.response!.data['message']));
      }
    });
  }


  Future<void> patientVerifyCode({
    required String otp,
    required String token ,
  }) async {
    emit(PatientVerifyCodeLoadingState());
    await DioHelper.postData(
      url: '${AppStrings.patientVerifyCode}/$token',
      data:
      {
        'verificationCode': otp,
      },
    ).then((value) {
      emit(PatientVerifyCodeSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientVerifyCodeErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> patientResetPassword({
    required String newPassword,
    required String confirmPassword,
    required String token ,
  }) async {
    emit(PatientResetPasswordLoadingState());
    await DioHelper.postData(
      url: '${AppStrings.patientResetPassword}/$token',
      data:
      {
        'newPassword': newPassword,
        'confirmPassword' : confirmPassword,
      },
    ).then((value) {
      emit(PatientResetPasswordSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientResetPasswordErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> patientChangePassword({
    required String currentPassword ,
    required String newPassword,
    required String confirmPassword,
  }) async {
    emit(PatientChangePasswordLoadingState());
    await DioHelper.putData(
      url: AppStrings.patientChangePassword,
      data: {
        'currentPassword' : currentPassword,
        'newPassword': newPassword,
        'confirmPassword' : confirmPassword,
      },
    ).then((value) {
      emit(PatientChangePasswordSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientChangePasswordErrorState(onError.response!.data['message']));
      }
    });
  }



}
