import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fazakir/core/constant/prayer_time_constant.dart';
import 'package:fazakir/core/location/location.dart';
import 'package:fazakir/data_source/local/hive_helper.dart';
import 'package:fazakir/data_source/remote/dio_helper.dart';
import 'package:fazakir/models/data_model/data_model.dart';
import 'package:fazakir/models/method_model/method_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

class PryaerTimeRepositiory {
  final DioHelper helper;
  final HiveHelper hiveHelper;

  PryaerTimeRepositiory({required this.helper, required this.hiveHelper});

  Future<DataModel> getCurrentPrayerTimes() async {
    final String currentTime = getCurrentDate();
    final qoury = await loadQuery();
    final Response response = await helper.getData(
      url: "${PrayerTimeConstant.timings}$currentTime",
      query: qoury,
    );
    final DataModel dataModel = DataModel.fromJson(jsonDecode(response.data['data']));
    return dataModel;
  }

  Future<Map<String, dynamic>> loadQuery() async {
    final int method = getUserSetting("method");
    final String shafaq = getUserSetting("shafaq");
    final int school = getUserSetting("school");
    final int midnightMode = getUserSetting("midnightMode");
    final String latitudeMethod = getUserSetting("latitudeAdjustmentMethod");
    final Position currentLocation = await Location.getPosition();
    return {
      "latitude": currentLocation.latitude,
      "longitude": currentLocation.longitude,
      "method": method,
      "shafaq": shafaq,
      "school": school,
      "midnightMode": midnightMode,
      "iso8601": true,
      "latitudeAdjustmentMethod": latitudeMethod,
    };
  }

  List<MethodModel> methodsFromJson(String str) {
    return List<MethodModel>.from(json.decode(str).map((x) => MethodModel.fromJson(x)));
  }

  Future<List<MethodModel>> getListOfMethod() async {
    final Response response = await helper.getData(url: PrayerTimeConstant.methods);
    final List<MethodModel> methodsList = methodsFromJson(response.data['data']);
    return methodsList;
  }

  String getCurrentDate() {
    final dateFormae = DateFormat("DD-MM-YYYY");
    DateTime currntTime = dateFormae.parse(DateTime.now().toString());
    log(currntTime.toString());
    return currntTime.toString();
  }

  getUserSetting(String key) {
    final prayerBox = Hive.box(prayerBoxName);
    return prayerBox.get(key);
  }

  Future<void> putUserSetting(String key, String value) async {
    final prayerBox = Hive.box(prayerBoxName);
    return prayerBox.put(key, value);
  }
}
