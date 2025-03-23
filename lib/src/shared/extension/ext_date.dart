import 'package:intl/intl.dart';

extension ExtDate on DateTime? {
  String format({String format = 'dd/MM/yyyy', String locale = 'vi'}) {
    if (this != null) {
      return DateFormat(format, locale).format(this!);
    }
    return 'Không có dữ liệu';
  }
}
