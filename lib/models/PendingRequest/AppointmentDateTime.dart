class AppointmentDateTime {
  AppointmentDateTime({
      this.day, 
      this.month, 
      this.hours, 
      this.minutes,});

  AppointmentDateTime.fromJson(dynamic json) {
    day = json['day'];
    month = json['month'];
    hours = json['hours'];
    minutes = json['minutes'];
  }
  num? day;
  num? month;
  num? hours;
  num? minutes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['month'] = month;
    map['hours'] = hours;
    map['minutes'] = minutes;
    return map;
  }

}