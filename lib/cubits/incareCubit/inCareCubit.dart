import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:relief/caregiver_view_details/caregiver_view_details_screen.dart';
import 'package:relief/caregiver_view_details_edit_profile/caregiver_view_details_edit_profile_view.dart';
import 'package:relief/caregiver_view_details_requests/caregiver_view_details_requests_viwe.dart';
import 'package:relief/caregiver_view_details_review/caregiver_view_details_review.dart';
import 'package:relief/homeScreen.dart';
import 'package:relief/models/UserDataCarer/UserDataCaregiver.dart';
import 'package:relief/screens/benefits.dart';
import 'package:relief/screens/howItWorks.dart';
import 'package:relief/screens/overview.dart';
import 'package:relief/screens/pricing.dart';
import 'package:relief/calendar.dart';
import 'package:relief/consset.dart';
import 'package:relief/screens/profileElder.dart';
import 'package:relief/shared/components/constants.dart';
import 'package:relief/sittings/SittingSS.dart';

import '../../models/GetAllUserDataCaregiver/GetAllUserDataCaregiver.dart';
import '../../models/GetAprovedRequestsForPatient/RequestsForPatientModel.dart';
import '../../models/PendingRequest/PendingRequestModel.dart';
import '../../models/UserDataPatient/UserDataPatient.dart';
import '../../shared/network/local/cache_helper.dart';
import '../../shared/network/remote/dio_helper.dart';
import '../../shared/resources/string_manager.dart';
part 'inCareStates.dart';

class inCareHeaderCubit extends Cubit<headerState> {
  inCareHeaderCubit() : super(InitialState());

  static inCareHeaderCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  // bool priceActive = false;

  void changeColors({required int index}) {
    currentIndex = index;
    print(currentIndex);
    emit(ChangeCurrentIndex());
  }

  void changePriceActive({required bool priceActive}) {
    priceActice = priceActive;
    emit(ChangePriceActive());
  }

  List<Widget> contents = [
    overview(),
    howItWorks(),
    benefits(),
    pricing(),
  ];

  List<Widget> mainScreens = [
    homeScreen(),
    calender(),
    elderprofile(),
    sittingSS(),
  ];

  List<Widget> mainScreensC = [
    CaregiverViewDetailsScreen(),
    CaregiverViewDetailsRequestsView(),
    CaregiverViewDetailsReview(),
    CaregiverViewDetailsEditProfileView(),
  ];

  TextEditingController addressController = TextEditingController();

  Future<void> getPlace({
    required dynamic lat,
    required dynamic lon,
  }) async {
    emit(LoadingPlace());
    Location location = Location();
    LocationData locationData;
    locationData = await location.getLocation();
    await DioHelper.getPlace(
            url: 'lat=${locationData.latitude}&lon=${locationData.longitude}')
        .then((value) {
      addressController.text = value.data['display_name'];
      emit(SuccessPlace());
    }).catchError((onError) {
      if (onError is DioException) {
        print('error : ${onError.response!.data}');
      }
      print('error : $onError');
      emit(ErrorPlace());
    });
  }

  UserDataPatient? userDataPatient;

  Future<void> getUserDataPatient({
    required String token,
  }) async {
    emit(PatientGetUserLoadingState());
    await DioHelper.getDate(
      url: '${AppStrings.patientGetUser}/$token',
    ).then((value) {
      userDataPatient = UserDataPatient.fromJson(value.data);
      emit(PatientGetUserSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientGetUserErrorState(onError.response!.data['message']));
      }
    });
  }

  UserDataCaregiver? userDataCaregiver;

  Future<void> getUserCaregiver({
    required String token,
  }) async {
    emit(CaregiverGetUserLoadingState());
    await DioHelper.getDate(
      url: '${AppStrings.carerGetUser}/$token',
    ).then((value) {
      userDataCaregiver = UserDataCaregiver.fromJson(value.data);
      emit(CaregiverGetUserSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(CaregiverGetUserErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> patientEditProfile({
    required String name,
    required String email,
    required String phone,
  }) async {
    emit(PatientEditProfileLoadingState());
    uid = CacheHelper.getData(key: 'ID');
    await DioHelper.putData(
      url: '${AppStrings.patientEditProfile}/$uid',
      data: {
        'userName': name,
        'email': email,
        'phone': phone,
      },
    ).then((value) {
      emit(PatientEditProfileSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientEditProfileErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> carerEditProfile({
    required String name,
    required String email,
    required String biography,
    File? image,
    required String phone,
  }) async {
    emit(CarerEditProfileLoadingState());
    uid = CacheHelper.getData(key: 'ID');
    await DioHelper.putData(
            url: '${AppStrings.carerEditProfile}/$uid',
            data: image == null
                ? {
                    'userName': name,
                    'email': email,
                    'biography': biography,
                    'phone': phone,
                  }
                : FormData.fromMap({
                    'userName': name,
                    'email': email,
                    'biography': biography,
                    'phone': phone,
                    'profilePhoto': await MultipartFile.fromFile(
                      image.path,
                    ),
                  }))
        .then((value) {
      emit(CarerEditProfileSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(CarerEditProfileErrorState(onError.response!.data['message']));
      }
    });
  }

  File? newPostImage;
  var newPicker = ImagePicker();

  Future<void> getNewPostImage(ImageSource imageSource) async {
    final pickedFile = await newPicker.pickImage(source: imageSource);
    if (pickedFile != null) {
      newPostImage = File(pickedFile.path);
      print('New Post Image : ${newPostImage.toString()}');
      emit(NewPostImagePickedSuccessState());
    } else {
      print('No image selected');
      emit(NewPostImagePickedErrorState());
    }
  }

  Future<void> discardChange() async {
    newPostImage = null;
    emit(DiscardChange());
  }

  List<GetAllUserDataCaregiver> allUserDataCaregiver = [];

  Future<void> getAllUserDataCaregiver() async {
    emit(CaregiverGetAllUserLoadingState());
    await DioHelper.getDate(
      url: AppStrings.getAllUserCaregiver,
    ).then((value) {
      allUserDataCaregiver = (value.data as List)
          .map((e) => GetAllUserDataCaregiver.fromJson(e))
          .toList();
      emit(CaregiverGetAllUserSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(CaregiverGetAllUserErrorState(onError.response!.data['message']));
      }
    });
  }

  String addressCaregiver = ' ';

  Future<void> getPlaceCaregiver({
    required dynamic lat,
    required dynamic lon,
  }) async {
    emit(LoadingPlace());
    await DioHelper.getPlace(url: 'lat=${lat}&lon=${lon}').then((value) {
      addressCaregiver = value.data['display_name'];
      emit(SuccessPlace());
    }).catchError((onError) {
      if (onError is DioException) {
        print('error : ${onError.response!.data}');
      }
      print('error : $onError');
      emit(ErrorPlace());
    });
  }

  GetAllUserDataCaregiver? getCaregiverById;
  Future<void> getUserCaregiverById({
    required String id,
  }) async {
    emit(CaregiverGetUserByIdLoadingState());
    await DioHelper.getDate(
      url: '${AppStrings.caregiverById}/$id',
    ).then((value) {
      getCaregiverById = GetAllUserDataCaregiver.fromJson(value.data['data']);
      getPlaceCaregiver(
          lat: getCaregiverById?.location?.coordinates?[0],
          lon: getCaregiverById?.location?.coordinates?[1]);
      emit(CaregiverGetUserByIdSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(CaregiverGetUserByIdErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> patientSpecificRequests(
      {required String id,
      required int day,
      required int month,
      required int hours,
      required int minutes,
      required int amount}) async {
    emit(PatientSpecificRequestsLoadingState());
    await DioHelper.postData(
        url: '${AppStrings.patientSpecificRequests}/$id',
        data: {
          'appointmentDateTime': {
            'day': day,
            'month': month,
            'hours': hours,
            'minutes': minutes
          },
          'determineThePeriodOfService': {"amount": amount, "unit": "day"}
        }).then((value) {
      emit(PatientSpecificRequestsSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(PatientSpecificRequestsErrorState(
            onError.response!.data['message']));
      }
    });
  }


  List<RequestsForPatientModel> requestsForPatientModel = [];
  Future<void> getApprovedRequestsForPatient() async {
    emit(GetApprovedRequestsForPatientLoadingState());
    uid = CacheHelper.getData(key: 'ID');
    await DioHelper.getDate(
      url: 'patient/${uid}/requests',
    ).then((value) {
      requestsForPatientModel = (value.data as List)
          .map((e) => RequestsForPatientModel.fromJson(e))
          .toList();
      emit(GetApprovedRequestsForPatientSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(GetApprovedRequestsForPatientErrorState(
            onError.response!.data['message']));
      }
    });
  }

  List<RequestsForPatientModel> requestsForCaregiverModel = [];
  Future<void> getApprovedRequestsForCaregiver() async {
    emit(GetApprovedRequestsForCaregiverLoadingState());
    uid = CacheHelper.getData(key: 'ID');
    await DioHelper.getDate(
      url: 'caregiver/${uid}/requests',
    ).then((value) {
      requestsForCaregiverModel = (value.data as List)
          .map((e) => RequestsForPatientModel.fromJson(e))
          .toList();
      emit(GetApprovedRequestsForCaregiverSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(GetApprovedRequestsForCaregiverErrorState(
            onError.response!.data['message']));
      }
    });
  }

  List<PendingRequestModel> pendingRequestModel = [];
  Future<void> caregiverAcceptRequest() async {
    emit(CaregiverAcceptRequestLoadingState());
    uid = CacheHelper.getData(key: 'ID');
    await DioHelper.getDate(
      url: 'caregiver/${uid}/pendingrequest',
    ).then((value) {
      pendingRequestModel = (value.data as List)
          .map((e) => PendingRequestModel.fromJson(e))
          .toList();
      emit(CaregiverAcceptRequestSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(CaregiverAcceptRequestErrorState(
            onError.response!.data['message']));
      }
    });
  }

  Future<void> approvePubicRequest({required String id}) async {
    emit(ApprovePubicRequestLoadingState());
    await DioHelper.putData(
      url: 'caregiver/publicrequests/${id}/approve',
      data: {},
    ).then((value) {
      emit(ApprovePubicRequestSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(ApprovePubicRequestErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> rejectPubicRequest({required String id}) async {
    emit(RejectPubicRequestLoadingState());
    await DioHelper.putData(
      url: 'caregiver/publicrequests/${id}/reject',
      data: {},
    ).then((value) {
      emit(RejectPubicRequestSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(RejectPubicRequestErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> approvePrivateRequest({required String id}) async {
    emit(ApprovePrivateRequestLoadingState());
    await DioHelper.putData(
      url: 'caregiver/specificRequests/approve/${id}',
      data: {},
    ).then((value) {
      emit(ApprovePrivateRequestSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(
            ApprovePrivateRequestErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> rejectPrivateRequest({required String id}) async {
    emit(RejectPrivateRequestLoadingState());
    await DioHelper.putData(
      url: 'caregiver/specificRequests/reject/${id}',
      data: {},
    ).then((value) {
      emit(RejectPrivateRequestSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(RejectPrivateRequestErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> makeRating({
    required String id,
    required int rating,
    required String messageRating,
  }) async {
    emit(MakeRatingLoadingState());
    await DioHelper.postData(
      url: 'requests/${id}/rate',
      data: {
        'rating': rating,
        'messageRating': messageRating,
      },
    ).then((value) {
      emit(MakeRatingSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(MakeRatingErrorState(onError.response!.data['message']));
      }
    });
  }

  Future<void> makePublicRating({
    required String id,
    required int rating,
    required String messageRating,
  }) async {
    emit(MakePublicRatingLoadingState());
    await DioHelper.postData(
      url: 'publicRequests/${id}/rate',
      data: {
        'rating': rating,
        'messageRating': messageRating,
      },
    ).then((value) {
      emit(MakePublicRatingSuccessState());
    }).catchError((onError) {
      if (onError is DioException) {
        debugPrint(onError.response!.data['message']);
        debugPrint(onError.message);
        emit(MakePublicRatingErrorState(onError.response!.data['message']));
      }
    });
  }
}
