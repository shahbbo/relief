class LocationPatient {
  LocationPatient({
      this.coordinates, 
      this.type,});

  LocationPatient.fromJson(dynamic json) {
/*    if (json['coordinates'] != null) {
      coordinates = [];
      json['coordinates'].forEach((v) {
        coordinates?.add(Dynamic.fromJson(v));
      });
    }*/
    type = json['type'];
  }
  List<dynamic>? coordinates;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (coordinates != null) {
      map['coordinates'] = coordinates?.map((v) => v.toJson()).toList();
    }
    map['type'] = type;
    return map;
  }

}