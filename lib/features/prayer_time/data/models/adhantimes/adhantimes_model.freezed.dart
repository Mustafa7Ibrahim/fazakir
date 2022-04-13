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

AdhanTimes _$AdhanTimesFromJson(Map<String, dynamic> json) {
  return _AdhanTimes.fromJson(json);
}

/// @nodoc
class _$AdhanTimesTearOff {
  const _$AdhanTimesTearOff();

  _AdhanTimes call(
      {required String fajr,
      required String sunrise,
      required String dhuhr,
      required String asr,
      required String maghrib,
      required String isha}) {
    return _AdhanTimes(
      fajr: fajr,
      sunrise: sunrise,
      dhuhr: dhuhr,
      asr: asr,
      maghrib: maghrib,
      isha: isha,
    );
  }

  AdhanTimes fromJson(Map<String, Object?> json) {
    return AdhanTimes.fromJson(json);
  }
}

/// @nodoc
const $AdhanTimes = _$AdhanTimesTearOff();

/// @nodoc
mixin _$AdhanTimes {
  String get fajr => throw _privateConstructorUsedError;
  String get sunrise => throw _privateConstructorUsedError;
  String get dhuhr => throw _privateConstructorUsedError;
  String get asr => throw _privateConstructorUsedError;
  String get maghrib => throw _privateConstructorUsedError;
  String get isha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdhanTimesCopyWith<AdhanTimes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdhanTimesCopyWith<$Res> {
  factory $AdhanTimesCopyWith(
          AdhanTimes value, $Res Function(AdhanTimes) then) =
      _$AdhanTimesCopyWithImpl<$Res>;
  $Res call(
      {String fajr,
      String sunrise,
      String dhuhr,
      String asr,
      String maghrib,
      String isha});
}

/// @nodoc
class _$AdhanTimesCopyWithImpl<$Res> implements $AdhanTimesCopyWith<$Res> {
  _$AdhanTimesCopyWithImpl(this._value, this._then);

  final AdhanTimes _value;
  // ignore: unused_field
  final $Res Function(AdhanTimes) _then;

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
abstract class _$AdhanTimesCopyWith<$Res> implements $AdhanTimesCopyWith<$Res> {
  factory _$AdhanTimesCopyWith(
          _AdhanTimes value, $Res Function(_AdhanTimes) then) =
      __$AdhanTimesCopyWithImpl<$Res>;
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
class __$AdhanTimesCopyWithImpl<$Res> extends _$AdhanTimesCopyWithImpl<$Res>
    implements _$AdhanTimesCopyWith<$Res> {
  __$AdhanTimesCopyWithImpl(
      _AdhanTimes _value, $Res Function(_AdhanTimes) _then)
      : super(_value, (v) => _then(v as _AdhanTimes));

  @override
  _AdhanTimes get _value => super._value as _AdhanTimes;

  @override
  $Res call({
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? maghrib = freezed,
    Object? isha = freezed,
  }) {
    return _then(_AdhanTimes(
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
class _$_AdhanTimes with DiagnosticableTreeMixin implements _AdhanTimes {
  _$_AdhanTimes(
      {required this.fajr,
      required this.sunrise,
      required this.dhuhr,
      required this.asr,
      required this.maghrib,
      required this.isha});

  factory _$_AdhanTimes.fromJson(Map<String, dynamic> json) =>
      _$$_AdhanTimesFromJson(json);

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
    return 'AdhanTimes(fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdhanTimes'))
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
            other is _AdhanTimes &&
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
  _$AdhanTimesCopyWith<_AdhanTimes> get copyWith =>
      __$AdhanTimesCopyWithImpl<_AdhanTimes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdhanTimesToJson(this);
  }
}

abstract class _AdhanTimes implements AdhanTimes {
  factory _AdhanTimes(
      {required String fajr,
      required String sunrise,
      required String dhuhr,
      required String asr,
      required String maghrib,
      required String isha}) = _$_AdhanTimes;

  factory _AdhanTimes.fromJson(Map<String, dynamic> json) =
      _$_AdhanTimes.fromJson;

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
  _$AdhanTimesCopyWith<_AdhanTimes> get copyWith =>
      throw _privateConstructorUsedError;
}
