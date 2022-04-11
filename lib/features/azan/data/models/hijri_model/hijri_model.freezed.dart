// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hijri_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HijriModel _$HijriModelFromJson(Map<String, dynamic> json) {
  return _HijriModel.fromJson(json);
}

/// @nodoc
class _$HijriModelTearOff {
  const _$HijriModelTearOff();

  _HijriModel call(
      {required String date,
      required String format,
      required String day,
      required WeekdayModel weekday,
      required MonthModel month,
      required String year,
      required DesignationModel designation,
      required List<dynamic> holidays}) {
    return _HijriModel(
      date: date,
      format: format,
      day: day,
      weekday: weekday,
      month: month,
      year: year,
      designation: designation,
      holidays: holidays,
    );
  }

  HijriModel fromJson(Map<String, Object?> json) {
    return HijriModel.fromJson(json);
  }
}

/// @nodoc
const $HijriModel = _$HijriModelTearOff();

/// @nodoc
mixin _$HijriModel {
  String get date => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  WeekdayModel get weekday => throw _privateConstructorUsedError;
  MonthModel get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  DesignationModel get designation => throw _privateConstructorUsedError;
  List<dynamic> get holidays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriModelCopyWith<HijriModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriModelCopyWith<$Res> {
  factory $HijriModelCopyWith(
          HijriModel value, $Res Function(HijriModel) then) =
      _$HijriModelCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String format,
      String day,
      WeekdayModel weekday,
      MonthModel month,
      String year,
      DesignationModel designation,
      List<dynamic> holidays});

  $WeekdayModelCopyWith<$Res> get weekday;
  $MonthModelCopyWith<$Res> get month;
  $DesignationModelCopyWith<$Res> get designation;
}

/// @nodoc
class _$HijriModelCopyWithImpl<$Res> implements $HijriModelCopyWith<$Res> {
  _$HijriModelCopyWithImpl(this._value, this._then);

  final HijriModel _value;
  // ignore: unused_field
  final $Res Function(HijriModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
    Object? holidays = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: weekday == freezed
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as WeekdayModel,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as MonthModel,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as DesignationModel,
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }

  @override
  $WeekdayModelCopyWith<$Res> get weekday {
    return $WeekdayModelCopyWith<$Res>(_value.weekday, (value) {
      return _then(_value.copyWith(weekday: value));
    });
  }

  @override
  $MonthModelCopyWith<$Res> get month {
    return $MonthModelCopyWith<$Res>(_value.month, (value) {
      return _then(_value.copyWith(month: value));
    });
  }

  @override
  $DesignationModelCopyWith<$Res> get designation {
    return $DesignationModelCopyWith<$Res>(_value.designation, (value) {
      return _then(_value.copyWith(designation: value));
    });
  }
}

/// @nodoc
abstract class _$HijriModelCopyWith<$Res> implements $HijriModelCopyWith<$Res> {
  factory _$HijriModelCopyWith(
          _HijriModel value, $Res Function(_HijriModel) then) =
      __$HijriModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String format,
      String day,
      WeekdayModel weekday,
      MonthModel month,
      String year,
      DesignationModel designation,
      List<dynamic> holidays});

  @override
  $WeekdayModelCopyWith<$Res> get weekday;
  @override
  $MonthModelCopyWith<$Res> get month;
  @override
  $DesignationModelCopyWith<$Res> get designation;
}

/// @nodoc
class __$HijriModelCopyWithImpl<$Res> extends _$HijriModelCopyWithImpl<$Res>
    implements _$HijriModelCopyWith<$Res> {
  __$HijriModelCopyWithImpl(
      _HijriModel _value, $Res Function(_HijriModel) _then)
      : super(_value, (v) => _then(v as _HijriModel));

  @override
  _HijriModel get _value => super._value as _HijriModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
    Object? holidays = freezed,
  }) {
    return _then(_HijriModel(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: weekday == freezed
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as WeekdayModel,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as MonthModel,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as DesignationModel,
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HijriModel implements _HijriModel {
  _$_HijriModel(
      {required this.date,
      required this.format,
      required this.day,
      required this.weekday,
      required this.month,
      required this.year,
      required this.designation,
      required this.holidays});

  factory _$_HijriModel.fromJson(Map<String, dynamic> json) =>
      _$$_HijriModelFromJson(json);

  @override
  final String date;
  @override
  final String format;
  @override
  final String day;
  @override
  final WeekdayModel weekday;
  @override
  final MonthModel month;
  @override
  final String year;
  @override
  final DesignationModel designation;
  @override
  final List<dynamic> holidays;

  @override
  String toString() {
    return 'HijriModel(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation, holidays: $holidays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HijriModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.weekday, weekday) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality()
                .equals(other.designation, designation) &&
            const DeepCollectionEquality().equals(other.holidays, holidays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(format),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(weekday),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(designation),
      const DeepCollectionEquality().hash(holidays));

  @JsonKey(ignore: true)
  @override
  _$HijriModelCopyWith<_HijriModel> get copyWith =>
      __$HijriModelCopyWithImpl<_HijriModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HijriModelToJson(this);
  }
}

abstract class _HijriModel implements HijriModel {
  factory _HijriModel(
      {required String date,
      required String format,
      required String day,
      required WeekdayModel weekday,
      required MonthModel month,
      required String year,
      required DesignationModel designation,
      required List<dynamic> holidays}) = _$_HijriModel;

  factory _HijriModel.fromJson(Map<String, dynamic> json) =
      _$_HijriModel.fromJson;

  @override
  String get date;
  @override
  String get format;
  @override
  String get day;
  @override
  WeekdayModel get weekday;
  @override
  MonthModel get month;
  @override
  String get year;
  @override
  DesignationModel get designation;
  @override
  List<dynamic> get holidays;
  @override
  @JsonKey(ignore: true)
  _$HijriModelCopyWith<_HijriModel> get copyWith =>
      throw _privateConstructorUsedError;
}
