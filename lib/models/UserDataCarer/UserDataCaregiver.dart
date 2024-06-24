import 'UserData.dart';

class UserDataCaregiver {
  UserDataCaregiver({
      this.userData,});

  UserDataCaregiver.fromJson(dynamic json) {
    userData = json['UserData'] != null ? UserData.fromJson(json['UserData']) : null;
  }
  UserData? userData;


}