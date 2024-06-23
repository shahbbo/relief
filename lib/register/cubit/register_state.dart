part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterPatientLoadingState extends RegisterState {}

final class RegisterPatientSuccessState extends RegisterState {
  final dynamic data;

  RegisterPatientSuccessState(this.data);
}

final class RegisterPatientErrorState extends RegisterState {
  final String error;

  RegisterPatientErrorState(this.error);
}

final class LoginPatientLoadingState extends RegisterState {}

final class LoginPatientSuccessState extends RegisterState {
  final dynamic data;

  LoginPatientSuccessState(this.data);
}

final class LoginPatientErrorState extends RegisterState {
  final String error;

  LoginPatientErrorState(this.error);
}

final class LoginCaregiverLoadingState extends RegisterState {}

final class LoginCaregiverSuccessState extends RegisterState {
  final dynamic data;

  LoginCaregiverSuccessState(this.data);
}

final class LoginCaregiverErrorState extends RegisterState {
  final String error;

  LoginCaregiverErrorState(this.error);
}


