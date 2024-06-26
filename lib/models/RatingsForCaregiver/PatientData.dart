import 'HealthRecordPatient.dart';
import 'LocationPatient.dart';

class PatientData {
  PatientData({
      this.user, 
      this.userEmail, 
      this.healthRecordPatient, 
      this.userNamePatient, 
      this.patientPhone, 
      this.locationPatient,});

  PatientData.fromJson(dynamic json) {
    user = json['user'];
    userEmail = json['userEmail'];
    healthRecordPatient = json['healthRecordPatient'] != null ? HealthRecordPatient.fromJson(json['healthRecordPatient']) : null;
    userNamePatient = json['userNamePatient'];
    patientPhone = json['patientPhone'];
    locationPatient = json['locationPatient'] != null ? LocationPatient.fromJson(json['locationPatient']) : null;
  }
  String? user;
  String? userEmail;
  HealthRecordPatient? healthRecordPatient;
  String? userNamePatient;
  String? patientPhone;
  LocationPatient? locationPatient;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user'] = user;
    map['userEmail'] = userEmail;
    if (healthRecordPatient != null) {
      map['healthRecordPatient'] = healthRecordPatient?.toJson();
    }
    map['userNamePatient'] = userNamePatient;
    map['patientPhone'] = patientPhone;
    if (locationPatient != null) {
      map['locationPatient'] = locationPatient?.toJson();
    }
    return map;
  }

}