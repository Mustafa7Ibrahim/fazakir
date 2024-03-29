// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParamsModel _$ParamsModelFromJson(Map<String, dynamic> json) {
  return _ParamsModel.fromJson(json);
}

/// @nodoc
class _$ParamsModelTearOff {
  const _$ParamsModelTearOff();

  _ParamsModel call({required double Fajr, required double Isha}) {
    return _ParamsModel(
      Fajr: Fajr,
      Isha: Isha,
    );
  }

  ParamsModel fromJson(Map<String, Object?> json) {
    return ParamsModel.fromJson(json);
  }
}

/// @nodoc
const $ParamsModel = _$ParamsModelTearOff();

/// @nodoc
mixin _$ParamsModel {
  double get Fajr => throw _privateConstructorUsedError;
  double get Isha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamsModelCopyWith<ParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsModelCopyWith<$Res> {
  factory $ParamsModelCopyWith(
          ParamsModel value, $Res Function(ParamsModel) then) =
      _$ParamsModelCopyWithImpl<$Res>;
  $Res call({double Fajr, double Isha});
}

/// @nodoc
class _$ParamsModelCopyWithImpl<$Res> implements $ParamsModelCopyWith<$Res> {
  _$ParamsModelCopyWithImpl(this._value, this._then);

  final ParamsModel _value;
  // ignore: unused_field
  final $Res Function(ParamsModel) _then;

  @override
  $Res call({
    Object? Fajr = freezed,
    Object? Isha = freezed,
  }) {
    return _then(_value.copyWith(
      Fajr: Fajr == freezed
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as double,
      Isha: Isha == freezed
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ParamsModelCopyWith<$Res>
    implements $ParamsModelCopyWith<$Res> {
  factory _$ParamsModelCopyWith(
          _ParamsModel value, $Res Function(_ParamsModel) then) =
      __$ParamsModelCopyWithImpl<$Res>;
  @override
  $Res call({double Fajr, double Isha});
}

/// @nodoc
class __$ParamsModelCopyWithImpl<$Res> extends _$ParamsModelCopyWithImpl<$Res>
    implements _$ParamsModelCopyWith<$Res> {
  __$ParamsModelCopyWithImpl(
      _ParamsModel _value, $Res Function(_ParamsModel) _then)
      : super(_value, (v) => _then(v as _ParamsModel));

  @override
  _ParamsModel get _value => super._value as _ParamsModel;

  @override
  $Res call({
    Object? Fajr = freezed,
    Object? Isha = freezed,
  }) {
    return _then(_ParamsModel(
      Fajr: Fajr == freezed
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as double,
      Isha: Isha == freezed
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParamsModel implements _ParamsModel {
  _$_ParamsModel({required this.Fajr, required this.Isha});

  factory _$_ParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParamsModelFromJson(json);

  @override
  final double Fajr;
  @override
  final double Isha;

  @override
  String toString() {
    return 'ParamsModel(Fajr: $Fajr, Isha: $Isha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParamsModel &&
            const DeepCollectionEquality().equals(other.Fajr, Fajr) &&
            const DeepCollectionEquality().equals(other.Isha, Isha));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Fajr),
      const DeepCollectionEquality().hash(Isha));

  @JsonKey(ignore: true)
  @override
  _$ParamsModelCopyWith<_ParamsModel> get copyWith =>
      __$ParamsModelCopyWithImpl<_ParamsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParamsModelToJson(this);
  }
}

abstract class _ParamsModel implements ParamsModel {
  factory _ParamsModel({required double Fajr, required double Isha}) =
      _$_ParamsModel;

  factory _ParamsModel.fromJson(Map<String, dynamic> json) =
      _$_ParamsModel.fromJson;

  @override
  double get Fajr;
  @override
  double get Isha;
  @override
  @JsonKey(ignore: true)
  _$ParamsModelCopyWith<_ParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
