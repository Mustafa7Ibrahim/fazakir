// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'designation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DesignationModel _$DesignationModelFromJson(Map<String, dynamic> json) {
  return _DesignationModel.fromJson(json);
}

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
      _$DesignationModelCopyWithImpl<$Res, DesignationModel>;
  @useResult
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class _$DesignationModelCopyWithImpl<$Res, $Val extends DesignationModel>
    implements $DesignationModelCopyWith<$Res> {
  _$DesignationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = null,
    Object? expanded = null,
  }) {
    return _then(_value.copyWith(
      abbreviated: null == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DesignationModelCopyWith<$Res>
    implements $DesignationModelCopyWith<$Res> {
  factory _$$_DesignationModelCopyWith(
          _$_DesignationModel value, $Res Function(_$_DesignationModel) then) =
      __$$_DesignationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class __$$_DesignationModelCopyWithImpl<$Res>
    extends _$DesignationModelCopyWithImpl<$Res, _$_DesignationModel>
    implements _$$_DesignationModelCopyWith<$Res> {
  __$$_DesignationModelCopyWithImpl(
      _$_DesignationModel _value, $Res Function(_$_DesignationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = null,
    Object? expanded = null,
  }) {
    return _then(_$_DesignationModel(
      abbreviated: null == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
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
            other is _$_DesignationModel &&
            (identical(other.abbreviated, abbreviated) ||
                other.abbreviated == abbreviated) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, abbreviated, expanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DesignationModelCopyWith<_$_DesignationModel> get copyWith =>
      __$$_DesignationModelCopyWithImpl<_$_DesignationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DesignationModelToJson(
      this,
    );
  }
}

abstract class _DesignationModel implements DesignationModel {
  factory _DesignationModel(
      {required final String abbreviated,
      required final String expanded}) = _$_DesignationModel;

  factory _DesignationModel.fromJson(Map<String, dynamic> json) =
      _$_DesignationModel.fromJson;

  @override
  String get abbreviated;
  @override
  String get expanded;
  @override
  @JsonKey(ignore: true)
  _$$_DesignationModelCopyWith<_$_DesignationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
