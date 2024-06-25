import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/network/remote/dio_helper.dart';
import '../../shared/resources/string_manager.dart';

part 'requests_state.dart';

class RequestsCubit extends Cubit<RequestsState> {
  RequestsCubit() : super(RequestsInitial());

  static RequestsCubit of(context) => BlocProvider.of<RequestsCubit>(context);

  TextEditingController numberElders = TextEditingController();
  TextEditingController weeksCare = TextEditingController();
  TextEditingController startDate = TextEditingController();
  TextEditingController room = TextEditingController();

  Future<void> publicRequest({
    required int HowManyPeopleAreYouArrangingCareFor,
    required String HowManyWeeksOfCareAreRequired,
    required String WhenWouldYouLikeTheCareToStart,
    required String DoesThePropertyHaveAPrivateBedroomForTheCarer,
    required String DoYouHaveAnyPreferenceOnTheGenderOfTheirCarer,
    required String WouldYouAcceptACarerWhoSmokes,
    required String DoYouNeedACarerThatCanDrive,
    required int day,
    required int month,
    required int hours,
    required int minutes,
    required int amount,
    required String unit,
  }) async {
    emit(PublicRequestLoadingState());
    await DioHelper.postData(url: AppStrings.patientPublicRequests,
        data: {
      'HowManyPeopleAreYouArrangingCareFor': HowManyPeopleAreYouArrangingCareFor,
      'HowManyWeeksOfCareAreRequired': HowManyWeeksOfCareAreRequired,
      'WhenWouldYouLikeTheCareToStart': WhenWouldYouLikeTheCareToStart,
      'DoesThePropertyHaveAPrivateBedroomForTheCarer': DoesThePropertyHaveAPrivateBedroomForTheCarer,
      'DoYouHaveAnyPreferenceOnTheGenderOfTheirCarer': DoYouHaveAnyPreferenceOnTheGenderOfTheirCarer,
      'WouldYouAcceptACarerWhoSmokes': WouldYouAcceptACarerWhoSmokes,
      'DoYouNeedACarerThatCanDrive': DoYouNeedACarerThatCanDrive,
      'appointmentDateTime': {
        'day': day,
        'month': month,
        'hours': hours,
        'minutes': minutes,
      },
      'determineThePeriodOfService': {
        'amount': amount,
        'unit': unit,
      },
    }).then((value) {
      emit(PublicRequestSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PublicRequestErrorState(onError.response!.data['message']));
      }
    });
  }
}
