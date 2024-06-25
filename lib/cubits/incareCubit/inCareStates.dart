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

final class CarerEditProfileLoadingState extends headerState {}

final class CarerEditProfileSuccessState extends headerState {}

final class CarerEditProfileErrorState extends headerState {
  final String error;

  CarerEditProfileErrorState(this.error);
}

final class NewPostImagePickedSuccessState extends headerState {}

final class NewPostImagePickedErrorState extends headerState {}

final class DiscardChange extends headerState {}

final class CaregiverGetAllUserLoadingState extends headerState {}

final class CaregiverGetAllUserSuccessState extends headerState {}

final class CaregiverGetAllUserErrorState extends headerState {
  final String error;

  CaregiverGetAllUserErrorState(this.error);
}

final class CaregiverGetUserByIdLoadingState extends headerState {}

final class CaregiverGetUserByIdSuccessState extends headerState {}

final class CaregiverGetUserByIdErrorState extends headerState {
  final String error;

  CaregiverGetUserByIdErrorState(this.error);
}

final class PatientSpecificRequestsLoadingState extends headerState {}

final class PatientSpecificRequestsSuccessState extends headerState {}

final class PatientSpecificRequestsErrorState extends headerState {
  final String error;

  PatientSpecificRequestsErrorState(this.error);
}


final class GetApprovedRequestsForPatientLoadingState  extends headerState {}

final class GetApprovedRequestsForPatientSuccessState  extends headerState {}

final class GetApprovedRequestsForPatientErrorState extends headerState {
  final String error;

  GetApprovedRequestsForPatientErrorState(this.error);
}

final class GetApprovedRequestsForCaregiverLoadingState extends headerState {}

final class GetApprovedRequestsForCaregiverSuccessState extends headerState {}

final class GetApprovedRequestsForCaregiverErrorState extends headerState {
  final String error;

  GetApprovedRequestsForCaregiverErrorState(this.error);
}

final class CaregiverAcceptRequestLoadingState extends headerState {}

final class CaregiverAcceptRequestSuccessState extends headerState {}

final class CaregiverAcceptRequestErrorState extends headerState {
  final String error;

  CaregiverAcceptRequestErrorState(this.error);
}