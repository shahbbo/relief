part of 'requests_cubit.dart';

@immutable
sealed class RequestsState {}

final class RequestsInitial extends RequestsState {}

final class PublicRequestLoadingState extends RequestsState {}

final class PublicRequestSuccessState extends RequestsState {}

final class PublicRequestErrorState extends RequestsState {
  final String error;

  PublicRequestErrorState(this.error);
}