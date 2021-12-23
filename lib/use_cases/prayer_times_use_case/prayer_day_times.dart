import 'package:fazakir/core/date/time_zone_co.dart';
import 'package:fazakir/models/data_model/data_model.dart';
import 'package:fazakir/use_cases/prayer_times_use_case/prayer_calendar_use_case.dart';

class PrayerDaytimesUseCase {
  PrayerDaytimesUseCase({required this.calenderUseCase});
  final PrayerCalenderUseCase calenderUseCase;

  DataModel getPrayerTimesOfCurrentDay() {
    final List<DataModel> data =
        calenderUseCase.getPrayerMonthCalenderFromLocal()!.data;
    final currentData = data.where(
      (dataModel) {
        final date = dataModel.date.gregorian;
        return date.day == TimeZoneCo.getCurrentDay() &&
            date.month.number == TimeZoneCo.getCurrentMonth() &&
            date.year == TimeZoneCo.getCurrentYear();
      },
    );
    return currentData.first;
  }
}
