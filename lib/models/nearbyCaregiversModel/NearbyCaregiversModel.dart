import 'Caregiver.dart';

class NearbyCaregiversModel {
  NearbyCaregiversModel({
      this.results, 
      this.caregiver,});

  NearbyCaregiversModel.fromJson(dynamic json) {
    results = json['results'];
    if (json['caregiver'] != null) {
      caregiver = [];
      json['caregiver'].forEach((v) {
        caregiver?.add(Caregiver.fromJson(v));
      });
    }
  }
  num? results;
  List<Caregiver>? caregiver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['results'] = results;
    if (caregiver != null) {
      map['caregiver'] = caregiver?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}