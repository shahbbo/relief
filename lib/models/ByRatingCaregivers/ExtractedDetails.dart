class ExtractedDetails {
  ExtractedDetails({
    this.diseases,
  });

  ExtractedDetails.fromJson(dynamic json) {
    // if (json['diseases'] != null) {
    //   diseases = [];
    //   json['diseases'].forEach((v) {
    //     diseases?.add(Dynamic.fromJson(v));
    //   });
    // }
  }

  List<dynamic>? diseases;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (diseases != null) {
      map['diseases'] = diseases?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
