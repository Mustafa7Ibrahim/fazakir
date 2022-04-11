import 'dart:convert';

import 'package:dio/dio.dart';
import '../../../../core/constant/prayer_time_constant.dart';
import '../../../../core/date/time_zone_co.dart';
import '../../../../data_source/remote/dio_helper.dart';

import '../../domain/repository/save_prayer_time.dart';
import '../models/prayer_responce/prayer_responce.dart';

class PrayerCalenderUseCase {
  PrayerCalenderUseCase({
    required this.dioHelper,
    required this.savePrayerTimes,
  });

  final DioHelper dioHelper;
  final SavePrayerTimes savePrayerTimes;

  Future<PrayerResponce> getMonthOfPrayerCalender() async {
    final Response response = await dioHelper.getData(
      url:
          "${PrayerTimeConstant.timings}/${TimeZoneCo.getCurrentDay()}-${TimeZoneCo.getCurrentMonth()}-${TimeZoneCo.getCurrentYear()}",
      query: getMonthPrayerCalenderQuery(),
    );
    return PrayerResponce.fromJson(jsonDecode(response.data));
  }

  Map<String, Object?> getMonthPrayerCalenderQuery() {
    return {
      "latitude": savePrayerTimes.latitude,
      "longitude": savePrayerTimes.longitude,
      "method": savePrayerTimes.method,
      "shafaq": savePrayerTimes.shafaq,
      "school": savePrayerTimes.school,
      "midnightMode": savePrayerTimes.midnightMode,
      "iso8601": true,
      "latitudeAdjustmentMethod": savePrayerTimes.latitudeAdjustmentMethod,
    };
  }
}
