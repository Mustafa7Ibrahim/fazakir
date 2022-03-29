import '../../models/prayer_settings_model/prayer_settings_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String prayerBoxName = "PrayerTimes";
const String prayerMonthListBox = "PrayerMonthListBox";

class HiveHelper {
  static init() async {
    await Hive.initFlutter();
    Hive.registerAdapter<PrayerSettingsModel>(PrayerSettingsModelAdapter());
    await openPrayerTimeBox();
    await openPrayerMonthListBox();
  }

  static Future<Box> openPrayerTimeBox() async {
    return await Hive.openBox(prayerBoxName);
  }

  static Future<Box> openPrayerMonthListBox() async {
    return await Hive.openBox(prayerMonthListBox);
  }

  Future<void> closeBoxs() async {
    return await Hive.close();
  }

  getData(String key) {
    final prayerBox = Hive.box(prayerBoxName);
    return prayerBox.get(key);
  }

  Future<void> removData(String key) async {
    final prayerBox = Hive.box(prayerBoxName);
    return await prayerBox.delete(key);
  }

  Future<void> putData(String key, dynamic value) async {
    final prayerBox = Hive.box(prayerBoxName);
    return prayerBox.put(key, value);
  }
}
