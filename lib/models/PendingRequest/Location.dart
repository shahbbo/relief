class Location {
  Location({
      this.type, 
      this.coordinates,});

  Location.fromJson(dynamic json) {
    type = json['type'];
  /*  if (json['coordinates'] != null) {
      coordinates = [];
      json['coordinates'].forEach((v) {
        coordinates?.add(Dynamic.fromJson(v));
      });
    }*/
  }
  String? type;
  List<dynamic>? coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    if (coordinates != null) {
      map['coordinates'] = coordinates?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}