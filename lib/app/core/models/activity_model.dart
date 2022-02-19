class ActivityModel {
  final String username;
  final String lastDigitsCard;
  final String date;
  final String value;

  ActivityModel(this.username, this.lastDigitsCard, this.date, this.value);

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
      json['username'], json['lastDigitsCard'], json['date'], json['value']);
}
