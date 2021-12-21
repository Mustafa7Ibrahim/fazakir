import '../../data_source/local/json_helper.dart';
import '../../models/azkar_model.dart';

class AzkarRepositiry {
  final JsonHelper jsonHelper;

  AzkarRepositiry({required this.jsonHelper});

  Future<List<AzkarModel>> getListOfAzkar() async {
    final String data = await jsonHelper.convertJsonFileToList(
        jsonFile: "assets/json/azkar.json");
    final List<AzkarModel> azkar = azkarFromJson(data);
    return azkar;
  }
}
