part of 'prayer_cubit.dart';

abstract class PrayerState extends Equatable {
  const PrayerState();

  @override
  List<Object> get props => [];
}

class PrayerInitial extends PrayerState {}

class PrayerLoading extends PrayerState {}

class PrayerLoaded extends PrayerState {
  final DataModel dataModel;

  const PrayerLoaded(this.dataModel);

  @override
  List<Object> get props => [dataModel];
}

class PrayerError extends PrayerState {
  final String message;

  const PrayerError(this.message);

  @override
  List<Object> get props => [message];
}

class SettingsState extends PrayerState {
  final PrayerSettingsModel settingsModel;
  final List<MethodModel> methodModel;

  const SettingsState({required this.settingsModel, required this.methodModel});

  @override
  List<Object> get props => [settingsModel, methodModel];
}
