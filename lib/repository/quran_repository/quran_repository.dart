import 'dart:convert';

import '../../data_source/local/json_helper.dart';
import '../../models/quran_page_model.dart';
import '../../models/soura_detals_model.dart';

class QuranRepository {
  final JsonHelper jsonHelper;
  QuranRepository({required this.jsonHelper});

  // Soura detals
  Future<SouraModel> getListOfSoura() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: 'assets/json/soura_detals.json');
    final list = json.decode(data);
    SouraModel souraModel = SouraModel.fromjson(list);
    return souraModel;
  }

  //Quran Page

  Future<QuranPageModel> getListOfQuranPage() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: 'assets/json/quran_index.json');
    final list = json.decode(data);
    QuranPageModel quranPageModel = QuranPageModel.fromjson(list);
    return quranPageModel;
  }
}
