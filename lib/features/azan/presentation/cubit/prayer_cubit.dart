import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data_source/local/hive_helper.dart';
import '../../data/models/data_model/data_model.dart';
import '../../data/use_case/prayer_calendar_use_case.dart';

part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit({
    required this.prayerCalenderUseCase,
    required this.hiveHelper,
  }) : super(PrayerInitial());

  // final PryaerTimeRepositiory pryaerTimeRepositiory;
  final PrayerCalenderUseCase prayerCalenderUseCase;
  final HiveHelper hiveHelper;

  void getPrayerTimes() async {
    emit(PrayerLoading());
    if (hiveHelper.getData("latitude") == null) {
      emit(PrayerFirstTime());
    } else {
      try {
        final data = await prayerCalenderUseCase.getMonthOfPrayerCalender();
        log(data.toString());
        emit(PrayerLoaded(data.data));
      } catch (e) {
        emit(PrayerError(e.toString()));
        addError(e);
      }
    }
  }

  void getListOfMethods() async {
    emit(PrayerLoading());
    try {
      // final List<MethodModel> methods = await pryaerTimeRepositiory.getListOfMethod();
      emit(PrayerFirstTime());
    } catch (e) {
      emit(PrayerError(e.toString()));
      addError(e);
    }
  }
}