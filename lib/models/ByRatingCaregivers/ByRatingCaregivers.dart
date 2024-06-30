class ByRatingCaregivers {
  ByRatingCaregivers({
    this.id,
    this.userName,
    this.averageRating,
  });

  ByRatingCaregivers.fromJson(dynamic json) {
    id = json['_id'];
    userName = json['userName'];
    averageRating = json['averageRating'];
  }

  String? id;
  String? userName;
  int? averageRating;
}
