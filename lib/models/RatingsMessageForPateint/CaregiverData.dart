class CaregiverData {
  CaregiverData({
      this.caregiver, 
      this.caregiverEmail, 
      this.caregiverPhone,});

  CaregiverData.fromJson(dynamic json) {
    caregiver = json['caregiver'];
    caregiverEmail = json['caregiverEmail'];
    caregiverPhone = json['caregiverPhone'];
  }
  String? caregiver;
  String? caregiverEmail;
  String? caregiverPhone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['caregiver'] = caregiver;
    map['caregiverEmail'] = caregiverEmail;
    map['caregiverPhone'] = caregiverPhone;
    return map;
  }

}