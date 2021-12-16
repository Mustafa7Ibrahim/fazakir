import 'dart:convert';

import 'package:fazakir/data_source/local/json_helper.dart';
import 'package:fazakir/models/salah_model.dart';

class SalahRepositiry {
  final JsonHelper jsonHelper;
  SalahRepositiry({
    required this.jsonHelper,
  });
  Future<SalahModel> getListOfSalah() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: "assets/json/salah.json");
    final list = json.decode(data);
    SalahModel praiseModel = SalahModel.fromJson(list);
    return praiseModel;
  }
}
