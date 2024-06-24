import 'UserData.dart';

class UserDataCaregiver {
  UserDataCaregiver({
      this.userData,});

  UserDataCaregiver.fromJson(dynamic json) {
    userData = json['UserData'] != null ? UserData.fromJson(json['UserData']) : null;
  }
  UserData? userData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (userData != null) {
      map['UserData'] = userData?.toJson();
    }
    return map;
  }

}