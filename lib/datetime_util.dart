class DateTimeUtils{
  static DateTime get getMonday {
    var mondays = 1;
    var now = DateTime.now();
    while (now.weekday != mondays) {
      now = now.subtract(const Duration(days: 1));
    }
    return now;
  }
  static DateTime get getTuesday {
    return getMonday.add(const Duration(days: 1));
  }
  static DateTime get getWednesday {
    return getMonday.add(const Duration(days: 2));
  }
  static DateTime get getThursday {
    return getMonday.add(const Duration(days: 3));
  }
  static DateTime get getFriday {
    return getMonday.add(const Duration(days: 4));
  }
  static DateTime get getSaturday {
    return getMonday.add(const Duration(days: 5));
  }
  static DateTime get getSunday {
    return getMonday.add(const Duration(days: 6));
  }

  static DateTime getMondayByTime(DateTime time) {
    var mondays = 1;
    var now = time ;
    while (now.weekday != mondays) {
      now = now.subtract(const Duration(days: 1));
    }
    return now;
  }
  static DateTime getTuesdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 1));
  }
  static DateTime getWednesdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 2));
  }
  static DateTime getThursdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 3));
  }
  static DateTime getFridayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 4));
  }
  static DateTime getSaturdayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 5));
  }
  static DateTime getSundayByTime(DateTime time) {
    return getMondayByTime(time).add(const Duration(days: 6));
  }
}