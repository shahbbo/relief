import 'ExtractedDetails.dart';
import 'Location.dart';

class Caregiver {
  Caregiver({
      this.extractedDetails, 
      this.location, 
      this.id, 
      this.userName, 
      this.email, 
      this.password, 
      this.rePassword, 
      this.dateOfBirth, 
      this.phone, 
      this.ratings, 
      this.averageRating, 
      this.gender, 
      this.availability, 
      this.doYouSmoke, 
      this.canYouDrive, 
      this.biography, 
      this.v,});

  Caregiver.fromJson(dynamic json) {
    extractedDetails = json['extractedDetails'] != null ? ExtractedDetails.fromJson(json['extractedDetails']) : null;
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    id = json['_id'];
    userName = json['userName'];
    email = json['email'];
    password = json['password'];
    rePassword = json['re_password'];
    dateOfBirth = json['dateOfBirth'];
    phone = json['phone'];
  /*  if (json['ratings'] != null) {
      ratings = [];
      json['ratings'].forEach((v) {
        ratings?.add(Dynamic.fromJson(v));
      });
    }*/
    averageRating = json['averageRating'];
    gender = json['gender'];
    availability = json['availability'];
    doYouSmoke = json['doYouSmoke'];
    canYouDrive = json['canYouDrive'];
    biography = json['biography'];
    v = json['__v'];
  }
  ExtractedDetails? extractedDetails;
  Location? location;
  String? id;
  String? userName;
  String? email;
  String? password;
  String? rePassword;
  String? dateOfBirth;
  String? phone;
  List<dynamic>? ratings;
  num? averageRating;
  String? gender;
  bool? availability;
  String? doYouSmoke;
  String? canYouDrive;
  String? biography;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (extractedDetails != null) {
      map['extractedDetails'] = extractedDetails?.toJson();
    }
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['_id'] = id;
    map['userName'] = userName;
    map['email'] = email;
    map['password'] = password;
    map['re_password'] = rePassword;
    map['dateOfBirth'] = dateOfBirth;
    map['phone'] = phone;
    if (ratings != null) {
      map['ratings'] = ratings?.map((v) => v.toJson()).toList();
    }
    map['averageRating'] = averageRating;
    map['gender'] = gender;
    map['availability'] = availability;
    map['doYouSmoke'] = doYouSmoke;
    map['canYouDrive'] = canYouDrive;
    map['biography'] = biography;
    map['__v'] = v;
    return map;
  }

}