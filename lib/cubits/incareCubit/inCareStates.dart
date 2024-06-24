part of 'inCareCubit.dart';

abstract class headerState {}

class InitialState extends headerState {}

class ChangeCurrentIndex extends headerState {}

class ChangePriceActive extends headerState {}

class LoadingPlace extends headerState {}

class SuccessPlace extends headerState {}

class ErrorPlace extends headerState {}

final class PatientGetUserLoadingState extends headerState {}

final class PatientGetUserSuccessState extends headerState {}

final class PatientGetUserErrorState extends headerState {
  final String error;

  PatientGetUserErrorState(this.error);
}

final class CaregiverGetUserLoadingState extends headerState {}

final class CaregiverGetUserSuccessState extends headerState {}

final class CaregiverGetUserErrorState extends headerState {
  final String error;

  CaregiverGetUserErrorState(this.error);
}

final class PatientEditProfileLoadingState  extends headerState {}

final class PatientEditProfileSuccessState extends headerState {}

final class PatientEditProfileErrorState extends headerState {
  final String error;

  PatientEditProfileErrorState(this.error);
}