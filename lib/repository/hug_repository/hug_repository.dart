import 'dart:convert';

import 'package:fazakir/data_source/local/json_helper.dart';
import 'package:fazakir/models/hug_model.dart';

class HugRepositiry {
  final JsonHelper jsonHelper;
  HugRepositiry({
    required this.jsonHelper,
  });
  Future<HugModel> getListOfHug() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: "assets/json/hug.json");
    final list = json.decode(data);
    HugModel hugModel = HugModel.fromJson(list);
    return hugModel;
  }
}
