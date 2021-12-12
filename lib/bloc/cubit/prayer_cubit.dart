import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fazakir/data_source/local/hive_helper.dart';
import 'package:fazakir/models/data_model/data_model.dart';
import 'package:fazakir/models/method_model/method_model.dart';
import 'package:fazakir/models/prayer_settings_model/prayer_settings_model.dart';
import 'package:fazakir/repository/prayer_time_repository/prayer_time_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit({required this.pryaerTimeRepositiory}) : super(PrayerInitial());

  final PryaerTimeRepositiory pryaerTimeRepositiory;

  void getPrayerTimes() async {
    emit(PrayerLoading());
    try {
      final DataModel data = await pryaerTimeRepositiory.getCurrentPrayerTimes();
      emit(PrayerLoaded(data));
    } catch (e) {
      emit(PrayerError(e.toString()));
      addError(e);
    }
  }

  void getListOfMethods() async {
    emit(PrayerLoading());
    try {
      final List<MethodModel> methods = await pryaerTimeRepositiory.getListOfMethod();
      emit(SettingsState(methodModel: methods, settingsModel: PrayerSettingsModel()));
    } catch (e) {
      emit(PrayerError(e.toString()));
      addError(e);
    }
  }

  void detrmain() {
    final prayerBox = Hive.box(prayerBoxName);
    if (prayerBox.isEmpty) {
      getListOfMethods();
    } else {
      getPrayerTimes();
    }
  }
}
