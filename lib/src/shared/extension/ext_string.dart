extension ExtString on String? {
  String get validator => this ?? '';

  double? get toDouble => double.tryParse(toString());

  double get toDoubleOrZero => toDouble ?? 0;

  int? get convertInt => int.tryParse(toString());

  bool get isEmptyOrNull => this?.isEmpty ?? true;

  bool get isNotEmptyOrNull => this?.isNotEmpty ?? false;

  int? get toInt => int.tryParse(toString());

  int get toIntOrZero => toInt ?? 0;

  double get extractNumberToDouble {
    final cleanString = this?.replaceAll('.', '') ?? '';
    return double.tryParse(cleanString) ?? 0;
  }

}