import 'HealthRecord.dart';
import 'Location.dart';

class UserData {
  UserData({
      this.userName, 
      this.email, 
      this.dateOfBirth, 
      this.phone, 
      this.gender, 
      this.password, 
      this.rePassword, 
      // this.healthRecord,
      this.location,});

  UserData.fromJson(dynamic json) {
    userName = json['userName'];
    email = json['email'];
    dateOfBirth = json['dateOfBirth'];
    phone = json['phone'];
    gender = json['gender'];
    password = json['password'];
    rePassword = json['re_password'];
    // healthRecord = json['healthRecord'] != null ? HealthRecord.fromJson(json['healthRecord']) : null;
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
  }
  String? userName;
  String? email;
  String? dateOfBirth;
  String? phone;
  String? gender;
  String? password;
  String? rePassword;
  // HealthRecord? healthRecord;
  Location? location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = userName;
    map['email'] = email;
    map['dateOfBirth'] = dateOfBirth;
    map['phone'] = phone;
    map['gender'] = gender;
    map['password'] = password;
    map['re_password'] = rePassword;
/*    if (healthRecord != null) {
      map['healthRecord'] = healthRecord?.toJson();
    }*/
    if (location != null) {
      map['location'] = location?.toJson();
    }
    return map;
  }

}