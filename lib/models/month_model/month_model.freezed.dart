// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'month_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthModel _$MonthModelFromJson(Map<String, dynamic> json) {
  return _MonthModel.fromJson(json);
}

/// @nodoc
class _$MonthModelTearOff {
  const _$MonthModelTearOff();

  _MonthModel call(
      {required int? number, required String? en, required String? ar}) {
    return _MonthModel(
      number: number,
      en: en,
      ar: ar,
    );
  }

  MonthModel fromJson(Map<String, Object?> json) {
    return MonthModel.fromJson(json);
  }
}

/// @nodoc
const $MonthModel = _$MonthModelTearOff();

/// @nodoc
mixin _$MonthModel {
  int? get number => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthModelCopyWith<MonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthModelCopyWith<$Res> {
  factory $MonthModelCopyWith(
          MonthModel value, $Res Function(MonthModel) then) =
      _$MonthModelCopyWithImpl<$Res>;
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class _$MonthModelCopyWithImpl<$Res> implements $MonthModelCopyWith<$Res> {
  _$MonthModelCopyWithImpl(this._value, this._then);

  final MonthModel _value;
  // ignore: unused_field
  final $Res Function(MonthModel) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$MonthModelCopyWith<$Res> implements $MonthModelCopyWith<$Res> {
  factory _$MonthModelCopyWith(
          _MonthModel value, $Res Function(_MonthModel) then) =
      __$MonthModelCopyWithImpl<$Res>;
  @override
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class __$MonthModelCopyWithImpl<$Res> extends _$MonthModelCopyWithImpl<$Res>
    implements _$MonthModelCopyWith<$Res> {
  __$MonthModelCopyWithImpl(
      _MonthModel _value, $Res Function(_MonthModel) _then)
      : super(_value, (v) => _then(v as _MonthModel));

  @override
  _MonthModel get _value => super._value as _MonthModel;

  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_MonthModel(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_MonthModel implements _MonthModel {
  _$_MonthModel({required this.number, required this.en, required this.ar});

  factory _$_MonthModel.fromJson(Map<String, dynamic> json) =>
      _$$_MonthModelFromJson(json);

  @override
  final int? number;
  @override
  final String? en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'MonthModel(number: $number, en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonthModel &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.en, en) &&
            const DeepCollectionEquality().equals(other.ar, ar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(en),
      const DeepCollectionEquality().hash(ar));

  @JsonKey(ignore: true)
  @override
  _$MonthModelCopyWith<_MonthModel> get copyWith =>
      __$MonthModelCopyWithImpl<_MonthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonthModelToJson(this);
  }
}

abstract class _MonthModel implements MonthModel {
  factory _MonthModel(
      {required int? number,
      required String? en,
      required String? ar}) = _$_MonthModel;

  factory _MonthModel.fromJson(Map<String, dynamic> json) =
      _$_MonthModel.fromJson;

  @override
  int? get number;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$MonthModelCopyWith<_MonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
