// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'designation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DesignationModel _$DesignationModelFromJson(Map<String, dynamic> json) {
  return _DesignationModel.fromJson(json);
}

/// @nodoc
class _$DesignationModelTearOff {
  const _$DesignationModelTearOff();

  _DesignationModel call(
      {required String abbreviated, required String expanded}) {
    return _DesignationModel(
      abbreviated: abbreviated,
      expanded: expanded,
    );
  }

  DesignationModel fromJson(Map<String, Object?> json) {
    return DesignationModel.fromJson(json);
  }
}

/// @nodoc
const $DesignationModel = _$DesignationModelTearOff();

/// @nodoc
mixin _$DesignationModel {
  String get abbreviated => throw _privateConstructorUsedError;
  String get expanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationModelCopyWith<DesignationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationModelCopyWith<$Res> {
  factory $DesignationModelCopyWith(
          DesignationModel value, $Res Function(DesignationModel) then) =
      _$DesignationModelCopyWithImpl<$Res>;
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class _$DesignationModelCopyWithImpl<$Res>
    implements $DesignationModelCopyWith<$Res> {
  _$DesignationModelCopyWithImpl(this._value, this._then);

  final DesignationModel _value;
  // ignore: unused_field
  final $Res Function(DesignationModel) _then;

  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_value.copyWith(
      abbreviated: abbreviated == freezed
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: expanded == freezed
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DesignationModelCopyWith<$Res>
    implements $DesignationModelCopyWith<$Res> {
  factory _$DesignationModelCopyWith(
          _DesignationModel value, $Res Function(_DesignationModel) then) =
      __$DesignationModelCopyWithImpl<$Res>;
  @override
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class __$DesignationModelCopyWithImpl<$Res>
    extends _$DesignationModelCopyWithImpl<$Res>
    implements _$DesignationModelCopyWith<$Res> {
  __$DesignationModelCopyWithImpl(
      _DesignationModel _value, $Res Function(_DesignationModel) _then)
      : super(_value, (v) => _then(v as _DesignationModel));

  @override
  _DesignationModel get _value => super._value as _DesignationModel;

  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_DesignationModel(
      abbreviated: abbreviated == freezed
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: expanded == freezed
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DesignationModel implements _DesignationModel {
  _$_DesignationModel({required this.abbreviated, required this.expanded});

  factory _$_DesignationModel.fromJson(Map<String, dynamic> json) =>
      _$$_DesignationModelFromJson(json);

  @override
  final String abbreviated;
  @override
  final String expanded;

  @override
  String toString() {
    return 'DesignationModel(abbreviated: $abbreviated, expanded: $expanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DesignationModel &&
            const DeepCollectionEquality()
                .equals(other.abbreviated, abbreviated) &&
            const DeepCollectionEquality().equals(other.expanded, expanded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(abbreviated),
      const DeepCollectionEquality().hash(expanded));

  @JsonKey(ignore: true)
  @override
  _$DesignationModelCopyWith<_DesignationModel> get copyWith =>
      __$DesignationModelCopyWithImpl<_DesignationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DesignationModelToJson(this);
  }
}

abstract class _DesignationModel implements DesignationModel {
  factory _DesignationModel(
      {required String abbreviated,
      required String expanded}) = _$_DesignationModel;

  factory _DesignationModel.fromJson(Map<String, dynamic> json) =
      _$_DesignationModel.fromJson;

  @override
  String get abbreviated;
  @override
  String get expanded;
  @override
  @JsonKey(ignore: true)
  _$DesignationModelCopyWith<_DesignationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
