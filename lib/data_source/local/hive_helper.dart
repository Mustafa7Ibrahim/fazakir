import 'package:fazakir/models/prayer_settings_model/prayer_settings_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String prayerBoxName = "PrayerTimes";

class HiveHelper {
  static init() async {
    await Hive.initFlutter();
    Hive.registerAdapter<PrayerSettingsModel>(PrayerSettingsModelAdapter());
    await openPrayerTimeBox();
  }

  static Future<Box> openPrayerTimeBox() async {
    return await Hive.openBox(prayerBoxName);
  }

  Future<void> closePrayerTimeBox() async {
    return await Hive.close();
  }

  getData(String key) {
    final prayerBox = Hive.box(prayerBoxName);
    return prayerBox.get(key);
  }

  Future<void> putData(String key, dynamic value) async {
    final prayerBox = Hive.box(prayerBoxName);
    return prayerBox.put(key, value);
  }
}
