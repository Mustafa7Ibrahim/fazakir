import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fazakir/core/constant/prayer_time_constant.dart';
import 'package:fazakir/core/date/time_zone_co.dart';
import 'package:fazakir/data_source/local/hive_helper.dart';
import 'package:fazakir/data_source/remote/dio_helper.dart';
import 'package:fazakir/models/prayer_responce/prayer_responce.dart';
import 'package:fazakir/repository/prayer_time_repository/save_prayer_time.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PrayerCalenderUseCase {
  PrayerCalenderUseCase({
    required this.dioHelper,
    required this.savePrayerTimes,
    required this.hiveHelper,
  });

  final DioHelper dioHelper;
  final SavePrayerTimes savePrayerTimes;
  final HiveHelper hiveHelper;

  Future<PrayerResponce> getMonthOfPrayerCalender() async {
    if (getPrayerMonthCalenderFromLocal() == null) {
      final Response response = await dioHelper.getData(
        url: PrayerTimeConstant.calender,
        query: getMonthPrayerCalenderQuery(),
      );
      return PrayerResponce.fromJson(jsonDecode(response.data));
    } else {
      return getPrayerMonthCalenderFromLocal()!;
    }
  }

  Map<String, Object?> getMonthPrayerCalenderQuery() {
    return {
      "latitude": savePrayerTimes.latitude,
      "longitude": savePrayerTimes.longitude,
      "month": TimeZoneCo.getCurrentMonth(),
      "year": TimeZoneCo.getCurrentYear(),
      "annual": false, //if true will return the whole year
      "method": savePrayerTimes.method,
      "shafaq": savePrayerTimes.shafaq,
      "school": savePrayerTimes.school,
      "midnightMode": savePrayerTimes.midnightMode,
      "iso8601": true,
      "latitudeAdjustmentMethod": savePrayerTimes.latitudeAdjustmentMethod,
    };
  }

  Future<void> savePrayerMonthCalenderToLocal() async {
    final PrayerResponce prayerResponce = await getMonthOfPrayerCalender();
    final convertToJson = prayerResponce.toJson();
    return Hive.box(prayerMonthListBox).putAll(convertToJson);
  }

  PrayerResponce? getPrayerMonthCalenderFromLocal() {
    final PrayerResponce? prayerResponce = PrayerResponce.fromJson(
      Hive.box(prayerMonthListBox).toMap().cast(),
    );
    prayerResponce?.data.sort(
      (a, b) => a.date.gregorian.day.compareTo(b.date.gregorian.day),
    );
    return prayerResponce;
  }
}
