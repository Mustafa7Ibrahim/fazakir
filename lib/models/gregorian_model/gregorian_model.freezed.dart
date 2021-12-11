// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gregorian_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GregorianModel _$GregorianModelFromJson(Map<String, dynamic> json) {
  return _GregorianModel.fromJson(json);
}

/// @nodoc
class _$GregorianModelTearOff {
  const _$GregorianModelTearOff();

  _GregorianModel call(
      {required String date,
      required String format,
      required String day,
      required WeekdayModel weekday,
      required MonthModel month,
      required String year,
      required DesignationModel designation}) {
    return _GregorianModel(
      date: date,
      format: format,
      day: day,
      weekday: weekday,
      month: month,
      year: year,
      designation: designation,
    );
  }

  GregorianModel fromJson(Map<String, Object?> json) {
    return GregorianModel.fromJson(json);
  }
}

/// @nodoc
const $GregorianModel = _$GregorianModelTearOff();

/// @nodoc
mixin _$GregorianModel {
  String get date => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  WeekdayModel get weekday => throw _privateConstructorUsedError;
  MonthModel get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  DesignationModel get designation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianModelCopyWith<GregorianModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianModelCopyWith<$Res> {
  factory $GregorianModelCopyWith(
          GregorianModel value, $Res Function(GregorianModel) then) =
      _$GregorianModelCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String format,
      String day,
      WeekdayModel weekday,
      MonthModel month,
      String year,
      DesignationModel designation});

  $WeekdayModelCopyWith<$Res> get weekday;
  $MonthModelCopyWith<$Res> get month;
  $DesignationModelCopyWith<$Res> get designation;
}

/// @nodoc
class _$GregorianModelCopyWithImpl<$Res>
    implements $GregorianModelCopyWith<$Res> {
  _$GregorianModelCopyWithImpl(this._value, this._then);

  final GregorianModel _value;
  // ignore: unused_field
  final $Res Function(GregorianModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
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
abstract class _$GregorianModelCopyWith<$Res>
    implements $GregorianModelCopyWith<$Res> {
  factory _$GregorianModelCopyWith(
          _GregorianModel value, $Res Function(_GregorianModel) then) =
      __$GregorianModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String format,
      String day,
      WeekdayModel weekday,
      MonthModel month,
      String year,
      DesignationModel designation});

  @override
  $WeekdayModelCopyWith<$Res> get weekday;
  @override
  $MonthModelCopyWith<$Res> get month;
  @override
  $DesignationModelCopyWith<$Res> get designation;
}

/// @nodoc
class __$GregorianModelCopyWithImpl<$Res>
    extends _$GregorianModelCopyWithImpl<$Res>
    implements _$GregorianModelCopyWith<$Res> {
  __$GregorianModelCopyWithImpl(
      _GregorianModel _value, $Res Function(_GregorianModel) _then)
      : super(_value, (v) => _then(v as _GregorianModel));

  @override
  _GregorianModel get _value => super._value as _GregorianModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
  }) {
    return _then(_GregorianModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GregorianModel implements _GregorianModel {
  _$_GregorianModel(
      {required this.date,
      required this.format,
      required this.day,
      required this.weekday,
      required this.month,
      required this.year,
      required this.designation});

  factory _$_GregorianModel.fromJson(Map<String, dynamic> json) =>
      _$$_GregorianModelFromJson(json);

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
  String toString() {
    return 'GregorianModel(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GregorianModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.weekday, weekday) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality()
                .equals(other.designation, designation));
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
      const DeepCollectionEquality().hash(designation));

  @JsonKey(ignore: true)
  @override
  _$GregorianModelCopyWith<_GregorianModel> get copyWith =>
      __$GregorianModelCopyWithImpl<_GregorianModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GregorianModelToJson(this);
  }
}

abstract class _GregorianModel implements GregorianModel {
  factory _GregorianModel(
      {required String date,
      required String format,
      required String day,
      required WeekdayModel weekday,
      required MonthModel month,
      required String year,
      required DesignationModel designation}) = _$_GregorianModel;

  factory _GregorianModel.fromJson(Map<String, dynamic> json) =
      _$_GregorianModel.fromJson;

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
  @JsonKey(ignore: true)
  _$GregorianModelCopyWith<_GregorianModel> get copyWith =>
      throw _privateConstructorUsedError;
}
