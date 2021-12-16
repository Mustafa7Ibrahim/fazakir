class SalahModel {
  List<SalahData> salahData = [];
  SalahModel.fromJson(Map<String, dynamic> json) {
    json['salah'].forEach((e) => salahData.add(SalahData.fromJson(e)));
  }
}

class SalahData {
  String? name;
  List<String>? info;
  SalahData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    info = List<String>.from(json["info"].map((x) => x));
  }
}
