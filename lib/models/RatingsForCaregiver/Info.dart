class Info {
  Info({
      this.messageRating, 
      this.rating,});

  Info.fromJson(dynamic json) {
    messageRating = json['messageRating'];
    rating = json['rating'];
  }
  String? messageRating;
  num? rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['messageRating'] = messageRating;
    map['rating'] = rating;
    return map;
  }

}