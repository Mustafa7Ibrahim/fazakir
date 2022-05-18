import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fazakir/features/prayer_time/data/models/adhantimes/adhantimes_model.dart';
import 'package:fazakir/features/prayer_time/domain/use_case/prayer_times_calculations.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_time_cubit.freezed.dart';
part 'prayer_time_state.dart';

class PrayerTimeCubit extends Cubit<PrayerTimeState> {
  PrayerTimeCubit({
    required this.prayerTimesCalculations,
  }) : super(const PrayerTimeState.initial());

  final PrayerTimesCalculations prayerTimesCalculations;

  void getPrayerTimesOfTheDay() async {
    emit(const PrayerTimeState.loading());
    try {
      final AdhanTimesModel adhanTimes =
          await prayerTimesCalculations.getAdhansOfTheDay();
      log(adhanTimes.toString());
      emit(PrayerTimeState.loaded(adhanTimes));
    } catch (e) {
      emit(const PrayerTimeState.loading());
    }
  }
}
