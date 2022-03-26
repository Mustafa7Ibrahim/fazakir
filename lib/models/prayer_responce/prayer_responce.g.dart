// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrayerResponce _$$_PrayerResponceFromJson(Map<String, dynamic> json) =>
    _$_PrayerResponce(
      code: json['code'] as int,
      status: json['status'] as String,
      data: DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrayerResponceToJson(_$_PrayerResponce instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };
