class DateFormatter {
  String getCurrentDate() {
    return "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}";
  }
}
