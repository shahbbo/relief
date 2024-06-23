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

