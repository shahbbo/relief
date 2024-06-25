class HealthRecordPatient {
  HealthRecordPatient({
      this.medicines, 
      this.diseases,});

  HealthRecordPatient.fromJson(dynamic json) {

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

}