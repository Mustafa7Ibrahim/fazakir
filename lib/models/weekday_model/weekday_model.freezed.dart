// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weekday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekdayModel _$WeekdayModelFromJson(Map<String, dynamic> json) {
  return _WeekdayModel.fromJson(json);
}

/// @nodoc
class _$WeekdayModelTearOff {
  const _$WeekdayModelTearOff();

  _WeekdayModel call({String? en, String? ar}) {
    return _WeekdayModel(
      en: en,
      ar: ar,
    );
  }

  WeekdayModel fromJson(Map<String, Object?> json) {
    return WeekdayModel.fromJson(json);
  }
}

/// @nodoc
const $WeekdayModel = _$WeekdayModelTearOff();

/// @nodoc
mixin _$WeekdayModel {
  String? get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekdayModelCopyWith<WeekdayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekdayModelCopyWith<$Res> {
  factory $WeekdayModelCopyWith(
          WeekdayModel value, $Res Function(WeekdayModel) then) =
      _$WeekdayModelCopyWithImpl<$Res>;
  $Res call({String? en, String? ar});
}

/// @nodoc
class _$WeekdayModelCopyWithImpl<$Res> implements $WeekdayModelCopyWith<$Res> {
  _$WeekdayModelCopyWithImpl(this._value, this._then);

  final WeekdayModel _value;
  // ignore: unused_field
  final $Res Function(WeekdayModel) _then;

  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: ar == freezed
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WeekdayModelCopyWith<$Res>
    implements $WeekdayModelCopyWith<$Res> {
  factory _$WeekdayModelCopyWith(
          _WeekdayModel value, $Res Function(_WeekdayModel) then) =
      __$WeekdayModelCopyWithImpl<$Res>;
  @override
  $Res call({String? en, String? ar});
}

/// @nodoc
class __$WeekdayModelCopyWithImpl<$Res> extends _$WeekdayModelCopyWithImpl<$Res>
    implements _$WeekdayModelCopyWith<$Res> {
  __$WeekdayModelCopyWithImpl(
      _WeekdayModel _value, $Res Function(_WeekdayModel) _then)
      : super(_value, (v) => _then(v as _WeekdayModel));

  @override
  _WeekdayModel get _value => super._value as _WeekdayModel;

  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_WeekdayModel(
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: ar == freezed
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeekdayModel implements _WeekdayModel {
  _$_WeekdayModel({this.en, this.ar});

  factory _$_WeekdayModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeekdayModelFromJson(json);

  @override
  final String? en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'WeekdayModel(en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeekdayModel &&
            const DeepCollectionEquality().equals(other.en, en) &&
            const DeepCollectionEquality().equals(other.ar, ar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(en),
      const DeepCollectionEquality().hash(ar));

  @JsonKey(ignore: true)
  @override
  _$WeekdayModelCopyWith<_WeekdayModel> get copyWith =>
      __$WeekdayModelCopyWithImpl<_WeekdayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekdayModelToJson(this);
  }
}

abstract class _WeekdayModel implements WeekdayModel {
  factory _WeekdayModel({String? en, String? ar}) = _$_WeekdayModel;

  factory _WeekdayModel.fromJson(Map<String, dynamic> json) =
      _$_WeekdayModel.fromJson;

  @override
  String? get en;
  @override
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$WeekdayModelCopyWith<_WeekdayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
