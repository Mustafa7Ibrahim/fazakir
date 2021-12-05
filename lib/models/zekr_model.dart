import 'dart:convert';

class ZekrModel {
  ZekrModel({
    required this.text,
    required this.count,
    required this.fadl,
    required this.source,
  });

  final String text;
  final String count;
  final String? fadl;
  final String source;

  ZekrModel copyWith({
    String? text,
    String? count,
    String? fadl,
    String? source,
  }) =>
      ZekrModel(
        text: text ?? this.text,
        count: count ?? this.count,
        fadl: fadl ?? this.fadl,
        source: source ?? this.source,
      );

  factory ZekrModel.fromRawJson(String str) => ZekrModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ZekrModel.fromJson(Map<String, dynamic> json) => ZekrModel(
        text: json["text"],
        count: json["count"],
        fadl: json["fadl"],
        source: json["source"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "count": count,
        "fadl": fadl,
        "source": source,
      };
}
