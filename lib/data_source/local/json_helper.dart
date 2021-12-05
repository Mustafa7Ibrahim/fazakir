import 'package:flutter/services.dart';

class JsonHelper {
  Future<String> convertJsonFileToList({required String jsonFile}) {
    return rootBundle.loadString(jsonFile);
  }
}
