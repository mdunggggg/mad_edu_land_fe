import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:intl/intl.dart';

extension ExtDate on DateTime? {
  String format({String format = 'dd/MM/yyyy', String locale = 'vi'}) {
    if (this != null) {
      return DateFormat(format, locale).format(this!.add(7.hours));
    }
    return 'Không có dữ liệu';
  }

  String getTimeAgo() {
    final now = DateTime.now();
    if (this == null) {
      return 'Không có dữ liệu';
    }
    final difference = now.difference(this!.add(7.hours));

    if (difference.inDays > 7) {
      return '${this!.day}/${this!.month}/${this!.year}';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} ngày trước';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} giờ trước';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} phút trước';
    } else {
      return 'Vừa mới đây';
    }
  }
}
