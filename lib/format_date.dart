import 'package:intl/intl.dart';

class FormatDate {
  /// convert datetime To String
  static String? dateTimeToString(DateTime? date, EDateFM fm) {
    if (date == null) {
      return null;
    }
    return fm.datetimeFormat.format(date);
  }

  /// convert String To datetime
  static DateTime? stringToDateTime(String? string, EDateFM fm,
      {Duration? timeAdd}) {
    if (string == null || string.isEmpty) {
      return null;
    }
    DateTime dateTime = fm.datetimeFormat.parse(string);
    if (timeAdd != null) {
      dateTime = dateTime.add(timeAdd);
    }
    return dateTime;
  }

  /// convert String To String
  static String? stringToString(String? string,
      {required EDateFM fmFrom, required EDateFM fmTo, Duration? timeAdd}) {
    DateTime? dateTime = stringToDateTime(string, fmFrom, timeAdd: timeAdd);
    if (dateTime == null) return null;
    return fmTo.datetimeFormat.format(dateTime);
  }
}

enum EDateFM {
  ddMMyyyy,
  yyyyMMdd,
  yyyyMMddHHmmss,
  ddMMyyyyHHmm,
  yyyyMMddTHHmmssSSSZ,
  hhmmddMMyyyy;

  /// Get DateFormat with format
  DateFormat get datetimeFormat {
    switch (this) {
      case EDateFM.ddMMyyyy:
        return DateFormat('dd/MM/yyyy');
      case EDateFM.yyyyMMdd:
        return DateFormat('yyyy-MM-dd');
      case EDateFM.yyyyMMddHHmmss:
        return DateFormat('yyyy-MM-dd HH:mm:ss');
      case EDateFM.ddMMyyyyHHmm:
        return DateFormat('dd/MM/yyyy HH:mm');
      case EDateFM.yyyyMMddTHHmmssSSSZ:
        return DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
      case EDateFM.hhmmddMMyyyy:
        return DateFormat('HH:mm dd/MM/yyyy');
    }
  }
}
