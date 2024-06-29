import 'MatchingCaregivers.dart';

class AiRecommendationModel {
  AiRecommendationModel({
      this.matchingCaregivers,});

  AiRecommendationModel.fromJson(dynamic json) {
    if (json['matchingCaregivers'] != null) {
      matchingCaregivers = [];
      json['matchingCaregivers'].forEach((v) {
        matchingCaregivers?.add(MatchingCaregivers.fromJson(v));
      });
    }
  }
  List<MatchingCaregivers>? matchingCaregivers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (matchingCaregivers != null) {
      map['matchingCaregivers'] = matchingCaregivers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}