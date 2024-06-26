part of 'review_cubit.dart';

@immutable
sealed class ReviewState {}

final class ReviewInitial extends ReviewState {}

final class GetAllRatingsMessageForPatientLoadingState extends ReviewState {}

final class GetAllRatingsMessageForPatientSuccessState extends ReviewState {}

final class GetAllRatingsMessageForPatientErrorState extends ReviewState {
  final String error;

  GetAllRatingsMessageForPatientErrorState(this.error);
}

final class GetAllRatingsMessageForCaregiverLoadingState extends ReviewState {}

final class GetAllRatingsMessageForCaregiverSuccessState extends ReviewState {}

final class GetAllRatingsMessageForCaregiverErrorState extends ReviewState {
  final String error;

  GetAllRatingsMessageForCaregiverErrorState(this.error);
}