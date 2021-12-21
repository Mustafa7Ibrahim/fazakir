import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data_source/local/hive_helper.dart';
import '../../models/data_model/data_model.dart';
import '../../repository/prayer_time_repository/prayer_time_repository.dart';

part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit({
    required this.pryaerTimeRepositiory,
    required this.hiveHelper,
  }) : super(PrayerInitial());

  final PryaerTimeRepositiory pryaerTimeRepositiory;
  final HiveHelper hiveHelper;

  void getPrayerTimes() async {
    emit(PrayerLoading());
    if (hiveHelper.getData("latitude") == null) {
      emit(PrayerFirstTime());
    } else {
      try {
        final DataModel data =
            await pryaerTimeRepositiory.getCurrentPrayerTimes();
        emit(PrayerLoaded(data));
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
