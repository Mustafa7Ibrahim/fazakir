// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adhantimes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdhanTimesModel _$AdhanTimesModelFromJson(Map<String, dynamic> json) {
  return _AdhanTimesModel.fromJson(json);
}

/// @nodoc
mixin _$AdhanTimesModel {
  DateTime get fajr => throw _privateConstructorUsedError;
  DateTime get sunrise => throw _privateConstructorUsedError;
  DateTime get dhuhr => throw _privateConstructorUsedError;
  DateTime get asr => throw _privateConstructorUsedError;
  DateTime get maghrib => throw _privateConstructorUsedError;
  DateTime get isha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdhanTimesModelCopyWith<AdhanTimesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdhanTimesModelCopyWith<$Res> {
  factory $AdhanTimesModelCopyWith(
          AdhanTimesModel value, $Res Function(AdhanTimesModel) then) =
      _$AdhanTimesModelCopyWithImpl<$Res, AdhanTimesModel>;
  @useResult
  $Res call(
      {DateTime fajr,
      DateTime sunrise,
      DateTime dhuhr,
      DateTime asr,
      DateTime maghrib,
      DateTime isha});
}

/// @nodoc
class _$AdhanTimesModelCopyWithImpl<$Res, $Val extends AdhanTimesModel>
    implements $AdhanTimesModelCopyWith<$Res> {
  _$AdhanTimesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? sunrise = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
  }) {
    return _then(_value.copyWith(
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as DateTime,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdhanTimesModelCopyWith<$Res>
    implements $AdhanTimesModelCopyWith<$Res> {
  factory _$$_AdhanTimesModelCopyWith(
          _$_AdhanTimesModel value, $Res Function(_$_AdhanTimesModel) then) =
      __$$_AdhanTimesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime fajr,
      DateTime sunrise,
      DateTime dhuhr,
      DateTime asr,
      DateTime maghrib,
      DateTime isha});
}

/// @nodoc
class __$$_AdhanTimesModelCopyWithImpl<$Res>
    extends _$AdhanTimesModelCopyWithImpl<$Res, _$_AdhanTimesModel>
    implements _$$_AdhanTimesModelCopyWith<$Res> {
  __$$_AdhanTimesModelCopyWithImpl(
      _$_AdhanTimesModel _value, $Res Function(_$_AdhanTimesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? sunrise = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
  }) {
    return _then(_$_AdhanTimesModel(
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as DateTime,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  final DateTime fajr;
  @override
  final DateTime sunrise;
  @override
  final DateTime dhuhr;
  @override
  final DateTime asr;
  @override
  final DateTime maghrib;
  @override
  final DateTime isha;

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
            other is _$_AdhanTimesModel &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.isha, isha) || other.isha == isha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fajr, sunrise, dhuhr, asr, maghrib, isha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdhanTimesModelCopyWith<_$_AdhanTimesModel> get copyWith =>
      __$$_AdhanTimesModelCopyWithImpl<_$_AdhanTimesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdhanTimesModelToJson(
      this,
    );
  }
}

abstract class _AdhanTimesModel implements AdhanTimesModel {
  factory _AdhanTimesModel(
      {required final DateTime fajr,
      required final DateTime sunrise,
      required final DateTime dhuhr,
      required final DateTime asr,
      required final DateTime maghrib,
      required final DateTime isha}) = _$_AdhanTimesModel;

  factory _AdhanTimesModel.fromJson(Map<String, dynamic> json) =
      _$_AdhanTimesModel.fromJson;

  @override
  DateTime get fajr;
  @override
  DateTime get sunrise;
  @override
  DateTime get dhuhr;
  @override
  DateTime get asr;
  @override
  DateTime get maghrib;
  @override
  DateTime get isha;
  @override
  @JsonKey(ignore: true)
  _$$_AdhanTimesModelCopyWith<_$_AdhanTimesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
