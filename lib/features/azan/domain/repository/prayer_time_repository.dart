import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/constant/prayer_time_constant.dart';
import '../../../../core/date/date_formatter.dart';
import '../../../../core/location/location.dart';
import '../../../../data_source/remote/dio_helper.dart';
import '../../data/models/data_model/data_model.dart';
import '../../data/models/method_model/method_model.dart';
import 'save_prayer_time.dart';

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
    final DataModel dataModel =
        DataModel.fromJson(json.decode(response.data)["data"]);
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
      "iso8601": true,
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
    final Response response =
        await dioHelper.getData(url: PrayerTimeConstant.methods);
    final List<MethodModel> methodsList =
        methodsFromJson(response.data['data']);
    return methodsList;
  }
}
