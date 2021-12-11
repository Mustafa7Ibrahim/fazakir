import 'dart:convert';

import 'package:fazakir/data_source/local/json_helper.dart';
import 'package:fazakir/models/praise_model.dart';

class PraiseRepositiry {
  final JsonHelper jsonHelper;
  PraiseRepositiry({
    required this.jsonHelper,
  });
  Future<PraiseModel> getListOfPraise() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: "assets/json/praise.json");
    final list = json.decode(data);
    PraiseModel praiseModel = PraiseModel.fromJson(list);
    return praiseModel;
  }
}
