// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
class _$MetaModelTearOff {
  const _$MetaModelTearOff();

  _MetaModel call(
      {required double latitude,
      required double longitude,
      required String timezone,
      required MethodModel method,
      required String latitudeAdjustmentMethod,
      required String midnightMode,
      required String school,
      required Map<String, int> offset}) {
    return _MetaModel(
      latitude: latitude,
      longitude: longitude,
      timezone: timezone,
      method: method,
      latitudeAdjustmentMethod: latitudeAdjustmentMethod,
      midnightMode: midnightMode,
      school: school,
      offset: offset,
    );
  }

  MetaModel fromJson(Map<String, Object?> json) {
    return MetaModel.fromJson(json);
  }
}

/// @nodoc
const $MetaModel = _$MetaModelTearOff();

/// @nodoc
mixin _$MetaModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  MethodModel get method => throw _privateConstructorUsedError;
  String get latitudeAdjustmentMethod => throw _privateConstructorUsedError;
  String get midnightMode => throw _privateConstructorUsedError;
  String get school => throw _privateConstructorUsedError;
  Map<String, int> get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res>;
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      MethodModel method,
      String latitudeAdjustmentMethod,
      String midnightMode,
      String school,
      Map<String, int> offset});

  $MethodModelCopyWith<$Res> get method;
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res> implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  final MetaModel _value;
  // ignore: unused_field
  final $Res Function(MetaModel) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? method = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MethodModel,
      latitudeAdjustmentMethod: latitudeAdjustmentMethod == freezed
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      midnightMode: midnightMode == freezed
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }

  @override
  $MethodModelCopyWith<$Res> get method {
    return $MethodModelCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value));
    });
  }
}

/// @nodoc
abstract class _$MetaModelCopyWith<$Res> implements $MetaModelCopyWith<$Res> {
  factory _$MetaModelCopyWith(
          _MetaModel value, $Res Function(_MetaModel) then) =
      __$MetaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      MethodModel method,
      String latitudeAdjustmentMethod,
      String midnightMode,
      String school,
      Map<String, int> offset});

  @override
  $MethodModelCopyWith<$Res> get method;
}

/// @nodoc
class __$MetaModelCopyWithImpl<$Res> extends _$MetaModelCopyWithImpl<$Res>
    implements _$MetaModelCopyWith<$Res> {
  __$MetaModelCopyWithImpl(_MetaModel _value, $Res Function(_MetaModel) _then)
      : super(_value, (v) => _then(v as _MetaModel));

  @override
  _MetaModel get _value => super._value as _MetaModel;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? method = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
    Object? offset = freezed,
  }) {
    return _then(_MetaModel(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MethodModel,
      latitudeAdjustmentMethod: latitudeAdjustmentMethod == freezed
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      midnightMode: midnightMode == freezed
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaModel implements _MetaModel {
  _$_MetaModel(
      {required this.latitude,
      required this.longitude,
      required this.timezone,
      required this.method,
      required this.latitudeAdjustmentMethod,
      required this.midnightMode,
      required this.school,
      required this.offset});

  factory _$_MetaModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaModelFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String timezone;
  @override
  final MethodModel method;
  @override
  final String latitudeAdjustmentMethod;
  @override
  final String midnightMode;
  @override
  final String school;
  @override
  final Map<String, int> offset;

  @override
  String toString() {
    return 'MetaModel(latitude: $latitude, longitude: $longitude, timezone: $timezone, method: $method, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaModel &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(
                other.latitudeAdjustmentMethod, latitudeAdjustmentMethod) &&
            const DeepCollectionEquality()
                .equals(other.midnightMode, midnightMode) &&
            const DeepCollectionEquality().equals(other.school, school) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(latitudeAdjustmentMethod),
      const DeepCollectionEquality().hash(midnightMode),
      const DeepCollectionEquality().hash(school),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$MetaModelCopyWith<_MetaModel> get copyWith =>
      __$MetaModelCopyWithImpl<_MetaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaModelToJson(this);
  }
}

abstract class _MetaModel implements MetaModel {
  factory _MetaModel(
      {required double latitude,
      required double longitude,
      required String timezone,
      required MethodModel method,
      required String latitudeAdjustmentMethod,
      required String midnightMode,
      required String school,
      required Map<String, int> offset}) = _$_MetaModel;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$_MetaModel.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get timezone;
  @override
  MethodModel get method;
  @override
  String get latitudeAdjustmentMethod;
  @override
  String get midnightMode;
  @override
  String get school;
  @override
  Map<String, int> get offset;
  @override
  @JsonKey(ignore: true)
  _$MetaModelCopyWith<_MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
