// ignore: import_of_legacy_library_into_null_safe
import 'package:adhan/adhan.dart';
import 'package:fazakir/core/location/location.dart';
import 'package:fazakir/features/prayer_time/data/models/adhantimes/adhantimes_model.dart';
import 'package:intl/intl.dart';

class AdhanCalculations {
  Future<AdhanTimes> getAdhansOfASpecificDay({
    required int year,
    required int month,
    required int day,
  }) async {
    final position = await Location.getPosition();
    final userPosition = Coordinates(position.latitude, position.longitude);
    final params = CalculationMethod.egyptian.getParameters();
    params.madhab = Madhab.hanafi;
    params.method = CalculationMethod.egyptian;
    final DateComponents date = DateComponents(year, month, day);
    final prayerTimes = PrayerTimes(userPosition, date, params);

    return AdhanTimes(
      fajr: dateFormat(prayerTimes.fajr),
      sunrise: dateFormat(prayerTimes.sunrise),
      dhuhr: dateFormat(prayerTimes.dhuhr),
      asr: dateFormat(prayerTimes.asr),
      maghrib: dateFormat(prayerTimes.maghrib),
      isha: dateFormat(prayerTimes.isha),
    );
  }

  Future<AdhanTimes> getAdhansOfTheDay() async {
    final position = await Location.getPosition();
    final userPosition = Coordinates(position.latitude, position.longitude);
    final params = CalculationMethod.egyptian.getParameters();
    params.madhab = Madhab.hanafi;
    params.method = CalculationMethod.egyptian;
    final prayerTimes = PrayerTimes.today(userPosition, params);

    return AdhanTimes(
      fajr: dateFormat(prayerTimes.fajr),
      sunrise: dateFormat(prayerTimes.sunrise),
      dhuhr: dateFormat(prayerTimes.dhuhr),
      asr: dateFormat(prayerTimes.asr),
      maghrib: dateFormat(prayerTimes.maghrib),
      isha: dateFormat(prayerTimes.isha),
    );
  }

  String dateFormat(DateTime time) {
    return DateFormat.jm().format(time);
  }
}
