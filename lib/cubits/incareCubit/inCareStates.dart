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


final class ApprovePubicRequestLoadingState extends headerState {}

final class ApprovePubicRequestSuccessState extends headerState {}

final class ApprovePubicRequestErrorState extends headerState {
  final String error;

  ApprovePubicRequestErrorState(this.error);
}

final class RejectPubicRequestLoadingState extends headerState {}

final class RejectPubicRequestSuccessState extends headerState {}

final class RejectPubicRequestErrorState extends headerState {
  final String error;

  RejectPubicRequestErrorState(this.error);
}

final class ApprovePrivateRequestLoadingState extends headerState {}

final class ApprovePrivateRequestSuccessState extends headerState {}

final class ApprovePrivateRequestErrorState extends headerState {
  final String error;

  ApprovePrivateRequestErrorState(this.error);
}

final class RejectPrivateRequestLoadingState extends headerState {}

final class RejectPrivateRequestSuccessState extends headerState {}

final class RejectPrivateRequestErrorState extends headerState {
  final String error;

  RejectPrivateRequestErrorState(this.error);
}


final class MakeRatingLoadingState extends headerState {}

final class MakeRatingSuccessState extends headerState {}

final class MakeRatingErrorState extends headerState {
  final String error;

  MakeRatingErrorState(this.error);
}

final class MakePublicRatingLoadingState extends headerState {}

final class MakePublicRatingSuccessState extends headerState {}

final class MakePublicRatingErrorState extends headerState {
  final String error;

  MakePublicRatingErrorState(this.error);
}

final class LoadingPlaceCaregiver extends headerState {}

final class SuccessPlaceCaregiver extends headerState {}

final class ErrorPlaceCaregiver extends headerState {}

final class NearbyCaregiversLoadingState extends headerState {}

final class NearbyCaregiversSuccessState extends headerState {}

final class NearbyCaregiversErrorState extends headerState {
  final String error;

  NearbyCaregiversErrorState(this.error);
}

final class AiRecommendationLoadingState  extends headerState {}

final class AiRecommendationSuccessState extends headerState {}

final class AiRecommendationErrorState extends headerState {
  final String error;

  AiRecommendationErrorState(this.error);
}