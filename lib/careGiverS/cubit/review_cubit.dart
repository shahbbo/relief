import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/RatingsForCaregiver/RatingsForCaregiver.dart';
import '../../models/RatingsMessageForPateint/RatingsMessageForPateintModel.dart';
import '../../shared/components/constants.dart';
import '../../shared/network/local/cache_helper.dart';
import '../../shared/network/remote/dio_helper.dart';

part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewState> {
  ReviewCubit() : super(ReviewInitial());

  static ReviewCubit get(context) => BlocProvider.of(context);


 List<RatingsMessageForPateintModel> ratingsMessageForPateintModel = [];

  Future<void> getAllRatingsMessageForPatient() async {
    emit(GetAllRatingsMessageForPatientLoadingState());
    uid = CacheHelper.getData(key: 'ID');
    await DioHelper.getDate(
      url: 'patient/${uid}/Ratings',
    ).then((value) {
      ratingsMessageForPateintModel = (value.data as List)
          .map((e) => RatingsMessageForPateintModel.fromJson(e))
          .toList();
      emit(GetAllRatingsMessageForPatientSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(GetAllRatingsMessageForPatientErrorState(onError.response!.data['message']));
      }
    });
  }


  List<RatingsForCaregiver>  ratingsForCaregiver = [];
  Future<void> getMessageRatingsForCaregiver({
    required String id ,
}) async {
    emit(GetAllRatingsMessageForCaregiverLoadingState());
    uid = CacheHelper.getData(key: 'ID');
    await DioHelper.getDate(
      url: 'caregiver/${id.isNotEmpty ? id : uid}/messageRatingse',
    ).then((value) {
      ratingsForCaregiver = (value.data as List)
          .map((e) => RatingsForCaregiver.fromJson(e))
          .toList();
      emit(GetAllRatingsMessageForCaregiverSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(GetAllRatingsMessageForCaregiverErrorState(onError.response!.data['message']));
      }
    });
  }
}
