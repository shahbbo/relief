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

final class RegisterCarerLoadingState extends RegisterState {}

final class RegisterCarerSuccessState extends RegisterState {
  final dynamic data;

  RegisterCarerSuccessState(this.data);
}

final class RegisterCarerErrorState extends RegisterState {
  final String error;

  RegisterCarerErrorState(this.error);
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

final class PatientForgotPasswordLoadingState extends RegisterState {}

final class PatientForgotPasswordSuccessState extends RegisterState {
  final dynamic data;

  PatientForgotPasswordSuccessState(this.data);
}

final class PatientForgotPasswordErrorState extends RegisterState {
  final String error;

  PatientForgotPasswordErrorState(this.error);
}


final class CarerForgotPasswordLoadingState extends RegisterState {}

final class CarerForgotPasswordSuccessState extends RegisterState {
  final dynamic data;

  CarerForgotPasswordSuccessState(this.data);
}

final class CarerForgotPasswordErrorState extends RegisterState {
  final String error;

  CarerForgotPasswordErrorState(this.error);
}


final class PatientVerifyCodeLoadingState extends RegisterState {}

final class PatientVerifyCodeSuccessState extends RegisterState {}

final class PatientVerifyCodeErrorState extends RegisterState {
  final String error;

  PatientVerifyCodeErrorState(this.error);
}


final class CarerVerifyCodeLoadingState extends RegisterState {}

final class CarerVerifyCodeSuccessState extends RegisterState {}

final class CarerVerifyCodeErrorState extends RegisterState {
  final String error;

  CarerVerifyCodeErrorState(this.error);
}




final class PatientResetPasswordLoadingState extends RegisterState {}

final class PatientResetPasswordSuccessState extends RegisterState {

}

final class PatientResetPasswordErrorState extends RegisterState {
  final String error;

  PatientResetPasswordErrorState(this.error);
}


final class CarerResetPasswordLoadingState extends RegisterState {}

final class CarerResetPasswordSuccessState extends RegisterState {

}

final class CarerResetPasswordErrorState extends RegisterState {
  final String error;

  CarerResetPasswordErrorState(this.error);
}




final class PatientChangePasswordLoadingState extends RegisterState {}

final class PatientChangePasswordSuccessState extends RegisterState {}

final class PatientChangePasswordErrorState extends RegisterState {
  final String error;

  PatientChangePasswordErrorState(this.error);
}


final class carerChangePasswordLoadingState extends RegisterState {}

final class carerChangePasswordSuccessState extends RegisterState {}

final class carerChangePasswordErrorState extends RegisterState {
  final String error;

  carerChangePasswordErrorState(this.error);
}
