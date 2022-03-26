// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MethodModel _$MethodModelFromJson(Map<String, dynamic> json) {
  return _MethodModel.fromJson(json);
}

/// @nodoc
class _$MethodModelTearOff {
  const _$MethodModelTearOff();

  _MethodModel call(
      {required int id,
      required String name,
      required ParamsModel params,
      required LocationModel location}) {
    return _MethodModel(
      id: id,
      name: name,
      params: params,
      location: location,
    );
  }

  MethodModel fromJson(Map<String, Object?> json) {
    return MethodModel.fromJson(json);
  }
}

/// @nodoc
const $MethodModel = _$MethodModelTearOff();

/// @nodoc
mixin _$MethodModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ParamsModel get params => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodModelCopyWith<MethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodModelCopyWith<$Res> {
  factory $MethodModelCopyWith(
          MethodModel value, $Res Function(MethodModel) then) =
      _$MethodModelCopyWithImpl<$Res>;
  $Res call({int id, String name, ParamsModel params, LocationModel location});

  $ParamsModelCopyWith<$Res> get params;
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$MethodModelCopyWithImpl<$Res> implements $MethodModelCopyWith<$Res> {
  _$MethodModelCopyWithImpl(this._value, this._then);

  final MethodModel _value;
  // ignore: unused_field
  final $Res Function(MethodModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ParamsModel,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  @override
  $ParamsModelCopyWith<$Res> get params {
    return $ParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }

  @override
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$MethodModelCopyWith<$Res>
    implements $MethodModelCopyWith<$Res> {
  factory _$MethodModelCopyWith(
          _MethodModel value, $Res Function(_MethodModel) then) =
      __$MethodModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, ParamsModel params, LocationModel location});

  @override
  $ParamsModelCopyWith<$Res> get params;
  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$MethodModelCopyWithImpl<$Res> extends _$MethodModelCopyWithImpl<$Res>
    implements _$MethodModelCopyWith<$Res> {
  __$MethodModelCopyWithImpl(
      _MethodModel _value, $Res Function(_MethodModel) _then)
      : super(_value, (v) => _then(v as _MethodModel));

  @override
  _MethodModel get _value => super._value as _MethodModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_MethodModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ParamsModel,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MethodModel implements _MethodModel {
  _$_MethodModel(
      {required this.id,
      required this.name,
      required this.params,
      required this.location});

  factory _$_MethodModel.fromJson(Map<String, dynamic> json) =>
      _$$_MethodModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final ParamsModel params;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'MethodModel(id: $id, name: $name, params: $params, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MethodModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.params, params) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(params),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$MethodModelCopyWith<_MethodModel> get copyWith =>
      __$MethodModelCopyWithImpl<_MethodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MethodModelToJson(this);
  }
}

abstract class _MethodModel implements MethodModel {
  factory _MethodModel(
      {required int id,
      required String name,
      required ParamsModel params,
      required LocationModel location}) = _$_MethodModel;

  factory _MethodModel.fromJson(Map<String, dynamic> json) =
      _$_MethodModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  ParamsModel get params;
  @override
  LocationModel get location;
  @override
  @JsonKey(ignore: true)
  _$MethodModelCopyWith<_MethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
