import 'DetermineThePeriodOfService.dart';
import 'AppointmentDateTime.dart';
import 'Location.dart';
import 'HealthRecordPatient.dart';

class PendingRequestModel {
  PendingRequestModel({
      this.determineThePeriodOfService, 
      this.appointmentDateTime, 
      this.location, 
      this.healthRecordPatient, 
      this.id, 
      this.role, 
      this.howManyPeopleAreYouArrangingCareFor, 
      this.howManyWeeksOfCareAreRequired, 
      this.whenWouldYouLikeTheCareToStart, 
      this.doesThePropertyHaveAPrivateBedroomForTheCarer, 
      this.doYouHaveAnyPreferenceOnTheGenderOfTheirCarer, 
      this.wouldYouAcceptACarerWhoSmokes, 
      this.doYouNeedACarerThatCanDrive, 
      this.user, 
      this.status, 
      this.userEmail, 
      this.userNamePatient, 
      this.patientPhone, 
      this.caregivers, 
      this.v,});

  PendingRequestModel.fromJson(dynamic json) {
    determineThePeriodOfService = json['determineThePeriodOfService'] != null ? DetermineThePeriodOfService.fromJson(json['determineThePeriodOfService']) : null;
    appointmentDateTime = json['appointmentDateTime'] != null ? AppointmentDateTime.fromJson(json['appointmentDateTime']) : null;
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    healthRecordPatient = json['healthRecordPatient'] != null ? HealthRecordPatient.fromJson(json['healthRecordPatient']) : null;
    id = json['_id'];
    role = json['role'];
    howManyPeopleAreYouArrangingCareFor = json['HowManyPeopleAreYouArrangingCareFor'];
    howManyWeeksOfCareAreRequired = json['HowManyWeeksOfCareAreRequired'];
    whenWouldYouLikeTheCareToStart = json['WhenWouldYouLikeTheCareToStart'];
    doesThePropertyHaveAPrivateBedroomForTheCarer = json['DoesThePropertyHaveAPrivateBedroomForTheCarer'];
    doYouHaveAnyPreferenceOnTheGenderOfTheirCarer = json['DoYouHaveAnyPreferenceOnTheGenderOfTheirCarer'];
    wouldYouAcceptACarerWhoSmokes = json['WouldYouAcceptACarerWhoSmokes'];
    doYouNeedACarerThatCanDrive = json['DoYouNeedACarerThatCanDrive'];
    user = json['user'];
    status = json['status'];
    userEmail = json['userEmail'];
    userNamePatient = json['userNamePatient'];
    patientPhone = json['patientPhone'];
    caregivers = json['caregivers'] != null ? json['caregivers'].cast<String>() : [];
    v = json['__v'];
  }
  DetermineThePeriodOfService? determineThePeriodOfService;
  AppointmentDateTime? appointmentDateTime;
  Location? location;
  HealthRecordPatient? healthRecordPatient;
  String? id;
  String? role;
  num? howManyPeopleAreYouArrangingCareFor;
  String? howManyWeeksOfCareAreRequired;
  String? whenWouldYouLikeTheCareToStart;
  String? doesThePropertyHaveAPrivateBedroomForTheCarer;
  String? doYouHaveAnyPreferenceOnTheGenderOfTheirCarer;
  String? wouldYouAcceptACarerWhoSmokes;
  String? doYouNeedACarerThatCanDrive;
  String? user;
  String? status;
  String? userEmail;
  String? userNamePatient;
  String? patientPhone;
  List<String>? caregivers;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (determineThePeriodOfService != null) {
      map['determineThePeriodOfService'] = determineThePeriodOfService?.toJson();
    }
    if (appointmentDateTime != null) {
      map['appointmentDateTime'] = appointmentDateTime?.toJson();
    }
    if (location != null) {
      map['location'] = location?.toJson();
    }
    if (healthRecordPatient != null) {
      map['healthRecordPatient'] = healthRecordPatient?.toJson();
    }
    map['_id'] = id;
    map['role'] = role;
    map['HowManyPeopleAreYouArrangingCareFor'] = howManyPeopleAreYouArrangingCareFor;
    map['HowManyWeeksOfCareAreRequired'] = howManyWeeksOfCareAreRequired;
    map['WhenWouldYouLikeTheCareToStart'] = whenWouldYouLikeTheCareToStart;
    map['DoesThePropertyHaveAPrivateBedroomForTheCarer'] = doesThePropertyHaveAPrivateBedroomForTheCarer;
    map['DoYouHaveAnyPreferenceOnTheGenderOfTheirCarer'] = doYouHaveAnyPreferenceOnTheGenderOfTheirCarer;
    map['WouldYouAcceptACarerWhoSmokes'] = wouldYouAcceptACarerWhoSmokes;
    map['DoYouNeedACarerThatCanDrive'] = doYouNeedACarerThatCanDrive;
    map['user'] = user;
    map['status'] = status;
    map['userEmail'] = userEmail;
    map['userNamePatient'] = userNamePatient;
    map['patientPhone'] = patientPhone;
    map['caregivers'] = caregivers;
    map['__v'] = v;
    return map;
  }

}