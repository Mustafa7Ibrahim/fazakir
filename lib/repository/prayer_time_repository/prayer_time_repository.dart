import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fazakir/core/constant/prayer_time_constant.dart';
import 'package:fazakir/core/date/date_formatter.dart';
import 'package:fazakir/core/location/location.dart';
import 'package:fazakir/data_source/remote/dio_helper.dart';
import 'package:fazakir/models/data_model/data_model.dart';
import 'package:fazakir/models/method_model/method_model.dart';
import 'package:fazakir/repository/prayer_time_repository/save_prayer_time.dart';
import 'package:geolocator/geolocator.dart';

class PryaerTimeRepositiory {
  final DioHelper dioHelper;
  final DateFormatter formatter;
  final SavePrayerTimes savePrayerTimes;

  PryaerTimeRepositiory({
    required this.dioHelper,
    required this.formatter,
    required this.savePrayerTimes,
  });

  Future<DataModel> getCurrentPrayerTimes() async {
    final String currentTime = formatter.getCurrentDate();
    final Map<String, dynamic> qoury = await loadQuery();
    final Response response = await dioHelper.getData(
      url: "${PrayerTimeConstant.timings}$currentTime",
      query: qoury,
    );
    final DataModel dataModel = DataModel.fromJson(json.decode(response.data)["data"]);
    savePrayerTimes.call(dataModel.meta);
    return dataModel;
  }

  Future<Map<String, dynamic>> loadQuery() async {
    return {
      "latitude": savePrayerTimes.latitude,
      "longitude": savePrayerTimes.longitude,
      "method": savePrayerTimes.method,
      "shafaq": savePrayerTimes.shafaq,
      "school": savePrayerTimes.school,
      "midnightMode": savePrayerTimes.midnightMode,
      "iso8601": false,
      "latitudeAdjustmentMethod": savePrayerTimes.latitudeAdjustmentMethod,
    };
  }

  Future<Position> getPosition() async {
    final Position position = await Location.getPosition();
    savePrayerTimes.setLatitude = position.latitude;
    savePrayerTimes.setlongitude = position.longitude;
    return position;
  }

  Future<List<MethodModel>> getListOfMethod() async {
    final Response response = await dioHelper.getData(url: PrayerTimeConstant.methods);
    final List<MethodModel> methodsList = methodsFromJson(response.data['data']);
    return methodsList;
  }
}
