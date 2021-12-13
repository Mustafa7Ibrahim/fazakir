// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
class _$DataModelTearOff {
  const _$DataModelTearOff();

  _DataModel call(
      {required Timings timings,
      required DateModel date,
      required MetaModel meta}) {
    return _DataModel(
      timings: timings,
      date: date,
      meta: meta,
    );
  }

  DataModel fromJson(Map<String, Object?> json) {
    return DataModel.fromJson(json);
  }
}

/// @nodoc
const $DataModel = _$DataModelTearOff();

/// @nodoc
mixin _$DataModel {
  Timings get timings => throw _privateConstructorUsedError;
  DateModel get date => throw _privateConstructorUsedError;
  MetaModel get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res>;
  $Res call({Timings timings, DateModel date, MetaModel meta});

  $TimingsCopyWith<$Res> get timings;
  $DateModelCopyWith<$Res> get date;
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res> implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  final DataModel _value;
  // ignore: unused_field
  final $Res Function(DataModel) _then;

  @override
  $Res call({
    Object? timings = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      timings: timings == freezed
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as Timings,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateModel,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }

  @override
  $TimingsCopyWith<$Res> get timings {
    return $TimingsCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value));
    });
  }

  @override
  $DateModelCopyWith<$Res> get date {
    return $DateModelCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value));
    });
  }

  @override
  $MetaModelCopyWith<$Res> get meta {
    return $MetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(
          _DataModel value, $Res Function(_DataModel) then) =
      __$DataModelCopyWithImpl<$Res>;
  @override
  $Res call({Timings timings, DateModel date, MetaModel meta});

  @override
  $TimingsCopyWith<$Res> get timings;
  @override
  $DateModelCopyWith<$Res> get date;
  @override
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$DataModelCopyWithImpl<$Res> extends _$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(_DataModel _value, $Res Function(_DataModel) _then)
      : super(_value, (v) => _then(v as _DataModel));

  @override
  _DataModel get _value => super._value as _DataModel;

  @override
  $Res call({
    Object? timings = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_DataModel(
      timings: timings == freezed
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as Timings,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateModel,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel implements _DataModel {
  _$_DataModel({required this.timings, required this.date, required this.meta});

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  final Timings timings;
  @override
  final DateModel date;
  @override
  final MetaModel meta;

  @override
  String toString() {
    return 'DataModel(timings: $timings, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataModel &&
            const DeepCollectionEquality().equals(other.timings, timings) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timings),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$DataModelCopyWith<_DataModel> get copyWith =>
      __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(this);
  }
}

abstract class _DataModel implements DataModel {
  factory _DataModel(
      {required Timings timings,
      required DateModel date,
      required MetaModel meta}) = _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  Timings get timings;
  @override
  DateModel get date;
  @override
  MetaModel get meta;
  @override
  @JsonKey(ignore: true)
  _$DataModelCopyWith<_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
