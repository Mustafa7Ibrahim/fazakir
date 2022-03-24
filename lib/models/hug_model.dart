class HugModel {
  List<HugData> hugData = [];
  HugModel.fromJson(Map<String, dynamic> json) {
    json['hug'].forEach((e) => hugData.add(HugData.fromJson(e)));
  }
}

class HugData {
  String? name;
  List<String>? info;
  HugData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    info = List<String>.from(json["info"].map((x) => x));
  }
}
