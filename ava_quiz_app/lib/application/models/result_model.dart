import 'dart:convert';

class ResultModel {
  final String title;
  final int length;
  final int reusult;
  final String userId;
  final double percent;
  final DateTime date;

  ResultModel({
    required this.title,
    required this.length,
    required this.reusult,
    required this.userId,
    required this.percent,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'length': length,
      'reusult': reusult,
      'userId': userId,
      'percent': percent,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory ResultModel.fromMap(Map<String, dynamic> map) {
    return ResultModel(
      title: map['title'] ?? '',
      length: map['length']?.toInt() ?? 0,
      reusult: map['reusult']?.toInt() ?? 0,
      userId: map['userId'] ?? '',
      percent: map['percent']?.toDouble() ?? 0.0,
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultModel.fromJson(String source) =>
      ResultModel.fromMap(json.decode(source));
}
