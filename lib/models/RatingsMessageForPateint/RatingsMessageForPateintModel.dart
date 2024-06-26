import 'CaregiverData.dart';
import 'Info.dart';

class RatingsMessageForPateintModel {
  RatingsMessageForPateintModel({
      this.caregiverData, 
      this.info,});

  RatingsMessageForPateintModel.fromJson(dynamic json) {
    caregiverData = json['caregiverData'] != null ? CaregiverData.fromJson(json['caregiverData']) : null;
    info = json['Info'] != null ? Info.fromJson(json['Info']) : null;
  }
  CaregiverData? caregiverData;
  Info? info;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (caregiverData != null) {
      map['caregiverData'] = caregiverData?.toJson();
    }
    if (info != null) {
      map['Info'] = info?.toJson();
    }
    return map;
  }

}