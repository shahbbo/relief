import 'PatientData.dart';
import 'Info.dart';

class RatingsForCaregiver {
  RatingsForCaregiver({
      this.patientData, 
      this.info,});

  RatingsForCaregiver.fromJson(dynamic json) {
    patientData = json['PatientData'] != null ? PatientData.fromJson(json['PatientData']) : null;
    info = json['Info'] != null ? Info.fromJson(json['Info']) : null;
  }
  PatientData? patientData;
  Info? info;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (patientData != null) {
      map['PatientData'] = patientData?.toJson();
    }
    if (info != null) {
      map['Info'] = info?.toJson();
    }
    return map;
  }

}