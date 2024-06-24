import 'Location.dart';

class UserData {
  UserData({
      this.userName, 
      this.email, 
      this.dateOfBirth, 
      this.phone, 
      this.gender, 
      this.availability, 
      this.doYouSmoke,
      this.canYouDrive,
      this.profilePhoto,
      this.biography, 
      this.location,});

  UserData.fromJson(dynamic json) {
    userName = json['userName'];
    email = json['email'];
    dateOfBirth = json['dateOfBirth'];
    phone = json['phone'];
    gender = json['gender'];
    availability = json['availability'];
    doYouSmoke = json['doYouSmoke'];
    canYouDrive = json['canYouDrive'];
    biography = json['biography'];
    profilePhoto = json['profilePhoto'];
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
  }
  String? userName;
  String? email;
  String? dateOfBirth;
  String? phone;
  String? gender;
  bool? availability;
  String? doYouSmoke;
  String? canYouDrive;
  String? biography;
  String? profilePhoto;
  Location? location;

}