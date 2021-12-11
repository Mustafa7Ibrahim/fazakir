// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateModel _$DateModelFromJson(Map<String, dynamic> json) {
  return _DateModel.fromJson(json);
}

/// @nodoc
class _$DateModelTearOff {
  const _$DateModelTearOff();

  _DateModel call(
      {required String readable,
      required String timestamp,
      required HijriModel hijri,
      required GregorianModel gregorian}) {
    return _DateModel(
      readable: readable,
      timestamp: timestamp,
      hijri: hijri,
      gregorian: gregorian,
    );
  }

  DateModel fromJson(Map<String, Object?> json) {
    return DateModel.fromJson(json);
  }
}

/// @nodoc
const $DateModel = _$DateModelTearOff();

/// @nodoc
mixin _$DateModel {
  String get readable => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  HijriModel get hijri => throw _privateConstructorUsedError;
  GregorianModel get gregorian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateModelCopyWith<DateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateModelCopyWith<$Res> {
  factory $DateModelCopyWith(DateModel value, $Res Function(DateModel) then) =
      _$DateModelCopyWithImpl<$Res>;
  $Res call(
      {String readable,
      String timestamp,
      HijriModel hijri,
      GregorianModel gregorian});

  $HijriModelCopyWith<$Res> get hijri;
  $GregorianModelCopyWith<$Res> get gregorian;
}

/// @nodoc
class _$DateModelCopyWithImpl<$Res> implements $DateModelCopyWith<$Res> {
  _$DateModelCopyWithImpl(this._value, this._then);

  final DateModel _value;
  // ignore: unused_field
  final $Res Function(DateModel) _then;

  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? hijri = freezed,
    Object? gregorian = freezed,
  }) {
    return _then(_value.copyWith(
      readable: readable == freezed
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      hijri: hijri == freezed
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriModel,
      gregorian: gregorian == freezed
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianModel,
    ));
  }

  @override
  $HijriModelCopyWith<$Res> get hijri {
    return $HijriModelCopyWith<$Res>(_value.hijri, (value) {
      return _then(_value.copyWith(hijri: value));
    });
  }

  @override
  $GregorianModelCopyWith<$Res> get gregorian {
    return $GregorianModelCopyWith<$Res>(_value.gregorian, (value) {
      return _then(_value.copyWith(gregorian: value));
    });
  }
}

/// @nodoc
abstract class _$DateModelCopyWith<$Res> implements $DateModelCopyWith<$Res> {
  factory _$DateModelCopyWith(
          _DateModel value, $Res Function(_DateModel) then) =
      __$DateModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String readable,
      String timestamp,
      HijriModel hijri,
      GregorianModel gregorian});

  @override
  $HijriModelCopyWith<$Res> get hijri;
  @override
  $GregorianModelCopyWith<$Res> get gregorian;
}

/// @nodoc
class __$DateModelCopyWithImpl<$Res> extends _$DateModelCopyWithImpl<$Res>
    implements _$DateModelCopyWith<$Res> {
  __$DateModelCopyWithImpl(_DateModel _value, $Res Function(_DateModel) _then)
      : super(_value, (v) => _then(v as _DateModel));

  @override
  _DateModel get _value => super._value as _DateModel;

  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? hijri = freezed,
    Object? gregorian = freezed,
  }) {
    return _then(_DateModel(
      readable: readable == freezed
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      hijri: hijri == freezed
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriModel,
      gregorian: gregorian == freezed
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateModel implements _DateModel {
  _$_DateModel(
      {required this.readable,
      required this.timestamp,
      required this.hijri,
      required this.gregorian});

  factory _$_DateModel.fromJson(Map<String, dynamic> json) =>
      _$$_DateModelFromJson(json);

  @override
  final String readable;
  @override
  final String timestamp;
  @override
  final HijriModel hijri;
  @override
  final GregorianModel gregorian;

  @override
  String toString() {
    return 'DateModel(readable: $readable, timestamp: $timestamp, hijri: $hijri, gregorian: $gregorian)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateModel &&
            const DeepCollectionEquality().equals(other.readable, readable) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.hijri, hijri) &&
            const DeepCollectionEquality().equals(other.gregorian, gregorian));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(readable),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(hijri),
      const DeepCollectionEquality().hash(gregorian));

  @JsonKey(ignore: true)
  @override
  _$DateModelCopyWith<_DateModel> get copyWith =>
      __$DateModelCopyWithImpl<_DateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateModelToJson(this);
  }
}

abstract class _DateModel implements DateModel {
  factory _DateModel(
      {required String readable,
      required String timestamp,
      required HijriModel hijri,
      required GregorianModel gregorian}) = _$_DateModel;

  factory _DateModel.fromJson(Map<String, dynamic> json) =
      _$_DateModel.fromJson;

  @override
  String get readable;
  @override
  String get timestamp;
  @override
  HijriModel get hijri;
  @override
  GregorianModel get gregorian;
  @override
  @JsonKey(ignore: true)
  _$DateModelCopyWith<_DateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
