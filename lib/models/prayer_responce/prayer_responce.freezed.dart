// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prayer_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrayerResponce _$PrayerResponceFromJson(Map<String, dynamic> json) {
  return _PrayerResponce.fromJson(json);
}

/// @nodoc
class _$PrayerResponceTearOff {
  const _$PrayerResponceTearOff();

  _PrayerResponce call(
      {required int code, required String status, required DataModel data}) {
    return _PrayerResponce(
      code: code,
      status: status,
      data: data,
    );
  }

  PrayerResponce fromJson(Map<String, Object?> json) {
    return PrayerResponce.fromJson(json);
  }
}

/// @nodoc
const $PrayerResponce = _$PrayerResponceTearOff();

/// @nodoc
mixin _$PrayerResponce {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerResponceCopyWith<PrayerResponce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerResponceCopyWith<$Res> {
  factory $PrayerResponceCopyWith(
          PrayerResponce value, $Res Function(PrayerResponce) then) =
      _$PrayerResponceCopyWithImpl<$Res>;
  $Res call({int code, String status, DataModel data});

  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$PrayerResponceCopyWithImpl<$Res>
    implements $PrayerResponceCopyWith<$Res> {
  _$PrayerResponceCopyWithImpl(this._value, this._then);

  final PrayerResponce _value;
  // ignore: unused_field
  final $Res Function(PrayerResponce) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
    ));
  }

  @override
  $DataModelCopyWith<$Res> get data {
    return $DataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PrayerResponceCopyWith<$Res>
    implements $PrayerResponceCopyWith<$Res> {
  factory _$PrayerResponceCopyWith(
          _PrayerResponce value, $Res Function(_PrayerResponce) then) =
      __$PrayerResponceCopyWithImpl<$Res>;
  @override
  $Res call({int code, String status, DataModel data});

  @override
  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$PrayerResponceCopyWithImpl<$Res>
    extends _$PrayerResponceCopyWithImpl<$Res>
    implements _$PrayerResponceCopyWith<$Res> {
  __$PrayerResponceCopyWithImpl(
      _PrayerResponce _value, $Res Function(_PrayerResponce) _then)
      : super(_value, (v) => _then(v as _PrayerResponce));

  @override
  _PrayerResponce get _value => super._value as _PrayerResponce;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_PrayerResponce(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrayerResponce implements _PrayerResponce {
  _$_PrayerResponce(
      {required this.code, required this.status, required this.data});

  factory _$_PrayerResponce.fromJson(Map<String, dynamic> json) =>
      _$$_PrayerResponceFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final DataModel data;

  @override
  String toString() {
    return 'PrayerResponce(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrayerResponce &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$PrayerResponceCopyWith<_PrayerResponce> get copyWith =>
      __$PrayerResponceCopyWithImpl<_PrayerResponce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrayerResponceToJson(this);
  }
}

abstract class _PrayerResponce implements PrayerResponce {
  factory _PrayerResponce(
      {required int code,
      required String status,
      required DataModel data}) = _$_PrayerResponce;

  factory _PrayerResponce.fromJson(Map<String, dynamic> json) =
      _$_PrayerResponce.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  DataModel get data;
  @override
  @JsonKey(ignore: true)
  _$PrayerResponceCopyWith<_PrayerResponce> get copyWith =>
      throw _privateConstructorUsedError;
}
