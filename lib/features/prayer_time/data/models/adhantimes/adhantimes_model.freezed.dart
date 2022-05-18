// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'adhantimes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdhanTimesModel _$AdhanTimesModelFromJson(Map<String, dynamic> json) {
  return _AdhanTimesModel.fromJson(json);
}

/// @nodoc
class _$AdhanTimesModelTearOff {
  const _$AdhanTimesModelTearOff();

  _AdhanTimesModel call(
      {required String fajr,
      required String sunrise,
      required String dhuhr,
      required String asr,
      required String maghrib,
      required String isha}) {
    return _AdhanTimesModel(
      fajr: fajr,
      sunrise: sunrise,
      dhuhr: dhuhr,
      asr: asr,
      maghrib: maghrib,
      isha: isha,
    );
  }

  AdhanTimesModel fromJson(Map<String, Object?> json) {
    return AdhanTimesModel.fromJson(json);
  }
}

/// @nodoc
const $AdhanTimesModel = _$AdhanTimesModelTearOff();

/// @nodoc
mixin _$AdhanTimesModel {
  String get fajr => throw _privateConstructorUsedError;
  String get sunrise => throw _privateConstructorUsedError;
  String get dhuhr => throw _privateConstructorUsedError;
  String get asr => throw _privateConstructorUsedError;
  String get maghrib => throw _privateConstructorUsedError;
  String get isha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdhanTimesModelCopyWith<AdhanTimesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdhanTimesModelCopyWith<$Res> {
  factory $AdhanTimesModelCopyWith(
          AdhanTimesModel value, $Res Function(AdhanTimesModel) then) =
      _$AdhanTimesModelCopyWithImpl<$Res>;
  $Res call(
      {String fajr,
      String sunrise,
      String dhuhr,
      String asr,
      String maghrib,
      String isha});
}

/// @nodoc
class _$AdhanTimesModelCopyWithImpl<$Res>
    implements $AdhanTimesModelCopyWith<$Res> {
  _$AdhanTimesModelCopyWithImpl(this._value, this._then);

  final AdhanTimesModel _value;
  // ignore: unused_field
  final $Res Function(AdhanTimesModel) _then;

  @override
  $Res call({
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? maghrib = freezed,
    Object? isha = freezed,
  }) {
    return _then(_value.copyWith(
      fajr: fajr == freezed
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      dhuhr: dhuhr == freezed
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      asr: asr == freezed
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String,
      maghrib: maghrib == freezed
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      isha: isha == freezed
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AdhanTimesModelCopyWith<$Res>
    implements $AdhanTimesModelCopyWith<$Res> {
  factory _$AdhanTimesModelCopyWith(
          _AdhanTimesModel value, $Res Function(_AdhanTimesModel) then) =
      __$AdhanTimesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fajr,
      String sunrise,
      String dhuhr,
      String asr,
      String maghrib,
      String isha});
}

/// @nodoc
class __$AdhanTimesModelCopyWithImpl<$Res>
    extends _$AdhanTimesModelCopyWithImpl<$Res>
    implements _$AdhanTimesModelCopyWith<$Res> {
  __$AdhanTimesModelCopyWithImpl(
      _AdhanTimesModel _value, $Res Function(_AdhanTimesModel) _then)
      : super(_value, (v) => _then(v as _AdhanTimesModel));

  @override
  _AdhanTimesModel get _value => super._value as _AdhanTimesModel;

  @override
  $Res call({
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? maghrib = freezed,
    Object? isha = freezed,
  }) {
    return _then(_AdhanTimesModel(
      fajr: fajr == freezed
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      dhuhr: dhuhr == freezed
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      asr: asr == freezed
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String,
      maghrib: maghrib == freezed
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      isha: isha == freezed
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdhanTimesModel
    with DiagnosticableTreeMixin
    implements _AdhanTimesModel {
  _$_AdhanTimesModel(
      {required this.fajr,
      required this.sunrise,
      required this.dhuhr,
      required this.asr,
      required this.maghrib,
      required this.isha});

  factory _$_AdhanTimesModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdhanTimesModelFromJson(json);

  @override
  final String fajr;
  @override
  final String sunrise;
  @override
  final String dhuhr;
  @override
  final String asr;
  @override
  final String maghrib;
  @override
  final String isha;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdhanTimesModel(fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdhanTimesModel'))
      ..add(DiagnosticsProperty('fajr', fajr))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('dhuhr', dhuhr))
      ..add(DiagnosticsProperty('asr', asr))
      ..add(DiagnosticsProperty('maghrib', maghrib))
      ..add(DiagnosticsProperty('isha', isha));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdhanTimesModel &&
            const DeepCollectionEquality().equals(other.fajr, fajr) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.dhuhr, dhuhr) &&
            const DeepCollectionEquality().equals(other.asr, asr) &&
            const DeepCollectionEquality().equals(other.maghrib, maghrib) &&
            const DeepCollectionEquality().equals(other.isha, isha));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fajr),
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(dhuhr),
      const DeepCollectionEquality().hash(asr),
      const DeepCollectionEquality().hash(maghrib),
      const DeepCollectionEquality().hash(isha));

  @JsonKey(ignore: true)
  @override
  _$AdhanTimesModelCopyWith<_AdhanTimesModel> get copyWith =>
      __$AdhanTimesModelCopyWithImpl<_AdhanTimesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdhanTimesModelToJson(this);
  }
}

abstract class _AdhanTimesModel implements AdhanTimesModel {
  factory _AdhanTimesModel(
      {required String fajr,
      required String sunrise,
      required String dhuhr,
      required String asr,
      required String maghrib,
      required String isha}) = _$_AdhanTimesModel;

  factory _AdhanTimesModel.fromJson(Map<String, dynamic> json) =
      _$_AdhanTimesModel.fromJson;

  @override
  String get fajr;
  @override
  String get sunrise;
  @override
  String get dhuhr;
  @override
  String get asr;
  @override
  String get maghrib;
  @override
  String get isha;
  @override
  @JsonKey(ignore: true)
  _$AdhanTimesModelCopyWith<_AdhanTimesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
