// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gregorian_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GregorianModel _$$_GregorianModelFromJson(Map<String, dynamic> json) =>
    _$_GregorianModel(
      date: json['date'] as String,
      format: json['format'] as String,
      day: json['day'] as String,
      weekday: WeekdayModel.fromJson(json['weekday'] as Map<String, dynamic>),
      month: MonthModel.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String,
      designation: DesignationModel.fromJson(
          json['designation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GregorianModelToJson(_$_GregorianModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
    };
