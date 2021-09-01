import 'package:intl/intl.dart';

class Helpers {
  static String returnMonth(DateTime date) {
    return new DateFormat.MMMM().format(date);
  }

  static DateTime tomorrowDate({bool isDayAfter = false}) {
    return DateTime.now().add(
      Duration(days: isDayAfter ? 2 : 1),
    );
  }

  static DateTime yesterdayDate({bool isDayBefore = false}) {
    return DateTime.now().subtract(
      Duration(days: isDayBefore ? 2 : 1),
    );
  }
}
