part of 'prayer_time_cubit.dart';

@freezed
class PrayerTimeState with _$PrayerTimeState {
  const factory PrayerTimeState.initial() = _Initial;
  const factory PrayerTimeState.loading() = _loading;
  const factory PrayerTimeState.loaded(AdhanTimesModel adantimes) = _loaded;
  const factory PrayerTimeState.firstTime() = _firstTime;
}
