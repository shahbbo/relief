class ExtractedDetails {
  ExtractedDetails({
      this.medicines, 
      this.diseases,});

  ExtractedDetails.fromJson(dynamic json) {
    medicines = json['medicines'] != null ? json['medicines'].cast<String>() : [];
    diseases = json['diseases'] != null ? json['diseases'].cast<String>() : [];
  }
  List<String>? medicines;
  List<String>? diseases;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['medicines'] = medicines;
    map['diseases'] = diseases;
    return map;
  }

}