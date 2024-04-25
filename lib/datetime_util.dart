class DateTimeUtils {
  /// get Monday of now
  static DateTime get getMonday {
    var mondays = 1;
    var now = DateTime.now();
    while (now.weekday != mondays) {
      now = now.subtract(const Duration(days: 1));
    }
    return now;
  }

  /// get Tuesday of now
  static DateTime get getTuesday {
    return getMonday.add(const Duration(days: 1));
  }

  /// get Wednesday of now
  static DateTime get getWednesday {
    return getMonday.add(const Duration(days: 2));
  }

  /// get Thursday of now
  static DateTime get getThursday {
    return getMonday.add(const Duration(days: 3));
  }

  /// get Friday of now
  static DateTime get getFriday {
    return getMonday.add(const Duration(days: 4));
  }

  /// get Saturday of now
  static DateTime get getSaturday {
    return getMonday.add(const Duration(days: 5));
  }

  /// get Sunday of now
  static DateTime get getSunday {
    return getMonday.add(const Duration(days: 6));
  }

  /// get Monday of time input
  static DateTime getMondayByTime(DateTime time) {
    var mondays = 1;
    var now = time;
    while (now.weekday != mondays) {
      now = now.subtract(const Duration(days: 1));
    }
    return now;
  }

  /// get Tuesday of time input
  static DateTime getTuesdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 1));
  }

  /// get Wednesday of time input
  static DateTime getWednesdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 2));
  }

  /// get Thursday of time input
  static DateTime getThursdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 3));
  }

  /// get Friday of time input
  static DateTime getFridayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 4));
  }

  /// get Saturday of time input
  static DateTime getSaturdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 5));
  }

  /// get Sunday of time input
  static DateTime getSundayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 6));
  }
}
