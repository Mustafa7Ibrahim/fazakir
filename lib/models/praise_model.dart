class PraiseModel {
  List<PraiseData> praise = [];
  PraiseModel.fromJson(Map<String, dynamic> json) {
    json['praise'].forEach((e) => praise.add(PraiseData.fromJson(e)));
  }
}

class PraiseData {
  String? name;
  String? info;
  String? mening;
  PraiseData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    info = json['info'];
    mening = json['mening'];
  }
}
