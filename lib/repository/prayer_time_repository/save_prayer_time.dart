import '../../data_source/local/hive_helper.dart';
import '../../models/meta_model/meta_model.dart';
import '../../models/prayer_settings_model/prayer_settings_enum.dart';

class SavePrayerTimes {
  final HiveHelper hiveHelper;

  SavePrayerTimes({required this.hiveHelper});

  late int _school;
  late int _midnightMode;
  late int _latitudeMethod;

  set setSchool(String school) {
    _determineSchool(school);
  }

  set setMidnightMode(String midnightMode) {
    _determineMidnightMode(midnightMode);
  }

  set setLatitudeAdjustmentMethod(String latitudeAdjustmentMethod) {
    _determineLatitudeAdjustmentMethod(latitudeAdjustmentMethod);
  }

  set setMethod(int number) {
    hiveHelper.putData("method", number);
  }

  set setShafaq(Shafaq shafaq) {
    hiveHelper.putData("shafaq", shafaq);
  }

  set setLatitude(double latitude) {
    hiveHelper.putData("latitude", latitude);
  }

  set setlongitude(double longitude) {
    hiveHelper.putData("longitude", longitude);
  }

  double get longitude => hiveHelper.getData("longitude");
  double get latitude => hiveHelper.getData("latitude");
  String? get shafaq => hiveHelper.getData("shafaq");
  int? get school => hiveHelper.getData("school");
  int? get midnightMode => hiveHelper.getData("midnightMode");
  int? get latitudeAdjustmentMethod =>
      hiveHelper.getData("latitudeAdjustmentMethod");
  int? get method => hiveHelper.getData("method");

  void call(MetaModel metaModel) {
    setLatitude = metaModel.latitude;
    setlongitude = metaModel.longitude;
    setLatitudeAdjustmentMethod = metaModel.latitudeAdjustmentMethod;
    setMethod = metaModel.method.id;
    setSchool = metaModel.school;
    setMidnightMode = metaModel.midnightMode;
  }

  void _determineLatitudeAdjustmentMethod(String latitudeAdjustmentMethod) {
    if (latitudeAdjustmentMethod == "ANGLE_BASED") {
      _latitudeMethod = LatitudeAdjustmentMethod.angleBased.index;
    } else if (latitudeAdjustmentMethod == "ONE_SEVENTH") {
      _latitudeMethod = LatitudeAdjustmentMethod.oneSeventh.index;
    } else {
      _latitudeMethod = LatitudeAdjustmentMethod.middleOfTheNight.index;
    }
    hiveHelper.putData("latitudeAdjustmentMethod", _latitudeMethod);
  }

  void _determineMidnightMode(String midnightMode) {
    if (midnightMode == "STANDARD") {
      _midnightMode = MidnightMode.standard.index;
    } else {
      _midnightMode = MidnightMode.jafari.index;
    }
    hiveHelper.putData("midnightMode", _midnightMode);
  }

  void _determineSchool(String school) {
    if (school == "STANDARD") {
      _school = School.shafi.index;
    } else {
      _school = School.hanafi.index;
    }
    hiveHelper.putData("school", _school);
  }
}
