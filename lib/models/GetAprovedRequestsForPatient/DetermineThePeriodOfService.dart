class DetermineThePeriodOfService {
  DetermineThePeriodOfService({
      this.amount, 
      this.unit,});

  DetermineThePeriodOfService.fromJson(dynamic json) {
    amount = json['amount'];
    unit = json['unit'];
  }
  num? amount;
  String? unit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['unit'] = unit;
    return map;
  }

}