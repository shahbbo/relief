/*
class HealthRecord {
  HealthRecord({
      this.medicines, 
      this.diseases,});

  HealthRecord.fromJson(dynamic json) {
    if (json['medicines'] != null) {
      medicines = [];
      json['medicines'].forEach((v) {
        medicines?.add(Dynamic.fromJson(v));
      });
    }
    if (json['diseases'] != null) {
      diseases = [];
      json['diseases'].forEach((v) {
        diseases?.add(Dynamic.fromJson(v));
      });
    }
  }
  List<dynamic>? medicines;
  List<dynamic>? diseases;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (medicines != null) {
      map['medicines'] = medicines?.map((v) => v.toJson()).toList();
    }
    if (diseases != null) {
      map['diseases'] = diseases?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}*/
