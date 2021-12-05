//     final azkar = azkarFromJson(jsonString);

import 'dart:convert';

import 'zekr_model.dart';

List<AzkarModel> azkarFromJson(String str) {
  return List<AzkarModel>.from(json.decode(str).map((x) => AzkarModel.fromJson(x)));
}

class AzkarModel {
  AzkarModel({
    required this.title,
    required this.count,
    required this.bookmark,
    required this.content,
  });

  final String title;
  final String count;
  final String bookmark;
  final List<ZekrModel> content;

  AzkarModel copyWith({
    String? title,
    String? count,
    String? bookmark,
    List<ZekrModel>? content,
  }) =>
      AzkarModel(
        title: title ?? this.title,
        count: count ?? this.count,
        bookmark: bookmark ?? this.bookmark,
        content: content ?? this.content,
      );

  factory AzkarModel.fromRawJson(String str) => AzkarModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AzkarModel.fromJson(Map<String, dynamic> json) => AzkarModel(
        title: json["title"],
        count: json["count"],
        bookmark: json["bookmark"],
        content: List<ZekrModel>.from(json["content"].map((x) => ZekrModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "count": count,
        "bookmark": bookmark,
        "content": List<dynamic>.from(content.map((x) => x.toJson())),
      };
}
