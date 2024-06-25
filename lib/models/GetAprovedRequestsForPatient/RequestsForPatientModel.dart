import 'AppointmentDateTime.dart';
import 'DetermineThePeriodOfService.dart';
import 'HealthRecordPatient.dart';

class RequestsForPatientModel {
  RequestsForPatientModel({
      this.appointmentDateTime, 
      this.determineThePeriodOfService, 
      this.healthRecordPatient, 
      this.id, 
      this.role, 
      this.user, 
      this.status, 
      this.userEmail, 
      this.caregiver, 
      this.caregiverEmail, 
      this.userNamePatient, 
      this.caregiverPhone, 
      this.patientPhone, 
      this.v, 
      this.caregiverName,});

  RequestsForPatientModel.fromJson(dynamic json) {
    appointmentDateTime = json['appointmentDateTime'] != null ? AppointmentDateTime.fromJson(json['appointmentDateTime']) : null;
    determineThePeriodOfService = json['determineThePeriodOfService'] != null ? DetermineThePeriodOfService.fromJson(json['determineThePeriodOfService']) : null;
    healthRecordPatient = json['healthRecordPatient'] != null ? HealthRecordPatient.fromJson(json['healthRecordPatient']) : null;
    id = json['_id'];
    role = json['role'];
    user = json['user'];
    status = json['status'];
    userEmail = json['userEmail'];
    caregiver = json['caregiver'];
    caregiverEmail = json['caregiverEmail'];
    userNamePatient = json['userNamePatient'];
    caregiverPhone = json['caregiverPhone'];
    patientPhone = json['patientPhone'];
    v = json['__v'];
    caregiverName = json['caregiverName'];
  }
  AppointmentDateTime? appointmentDateTime;
  DetermineThePeriodOfService? determineThePeriodOfService;
  HealthRecordPatient? healthRecordPatient;
  String? id;
  String? role;
  String? user;
  String? status;
  String? userEmail;
  String? caregiver;
  String? caregiverEmail;
  String? userNamePatient;
  String? caregiverPhone;
  String? patientPhone;
  num? v;
  String? caregiverName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (appointmentDateTime != null) {
      map['appointmentDateTime'] = appointmentDateTime?.toJson();
    }
    if (determineThePeriodOfService != null) {
      map['determineThePeriodOfService'] = determineThePeriodOfService?.toJson();
    }
    if (healthRecordPatient != null) {
      map['healthRecordPatient'] = healthRecordPatient?.toJson();
    }
    map['_id'] = id;
    map['role'] = role;
    map['user'] = user;
    map['status'] = status;
    map['userEmail'] = userEmail;
    map['caregiver'] = caregiver;
    map['caregiverEmail'] = caregiverEmail;
    map['userNamePatient'] = userNamePatient;
    map['caregiverPhone'] = caregiverPhone;
    map['patientPhone'] = patientPhone;
    map['__v'] = v;
    map['caregiverName'] = caregiverName;
    return map;
  }

}