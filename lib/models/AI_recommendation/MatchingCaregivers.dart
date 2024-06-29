import 'Caregiver.dart';

class MatchingCaregivers {
  MatchingCaregivers({
      this.caregiver, 
      this.commonDiseases,});

  MatchingCaregivers.fromJson(dynamic json) {
    caregiver = json['caregiver'] != null ? Caregiver.fromJson(json['caregiver']) : null;
    commonDiseases = json['commonDiseases'] != null ? json['commonDiseases'].cast<String>() : [];
  }
  Caregiver? caregiver;
  List<String>? commonDiseases;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (caregiver != null) {
      map['caregiver'] = caregiver?.toJson();
    }
    map['commonDiseases'] = commonDiseases;
    return map;
  }

}