Package bao gồm các hàm thông dụng, đã điều chỉnh để dễ sử dụng hơn và được gom chung vào 1 package

## Usage
- Có 2 cách để khai báo package vào dự án:
    + Download package về và bỏ vào dự án và khai báo vào pubspec.yaml
      helper_util_package:
      path: ./helper_util_package
    + Khai báo link github vào pubspec.yaml
      helper_util_package:
      git:
      url: https://github.com/hlongho/helper_util_package.git
      ref: main

## Function
# DateTimeUtils
return DateTime monday - sunday in week at now
    + getMonday
    + getTuesday
    + getWednesday
    + getThursday
    + getFriday
    + getSaturday
    + getSunday
return DateTime monday - sunday in week at time input
    + getMondayByTime(DateTime time)
    + getTuesdayByTime(DateTime time)
    + getWednesdayByTime(DateTime time)
    + getThursdayByTime(DateTime time)
    + getFridayByTime(DateTime time)
    + getSaturdayByTime(DateTime time)
    + getSundayByTime(DateTime time)
# FormatDate
chuyển đổi định dạng data qua lại từ datatime->string, string->datetime, string->string với các loại định dạng:
    + dd/MM/yyyy
    + yyyy-MM-dd
    + yyyy-MM-dd HH:mm:ss
    + dd/MM/yyyy HH:mm
    + yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
    + HH:mm dd/MM/yyyy
- dateTimeToString(DateTime? date, EDateFM fm)
- stringToDateTime(String? string, EDateFM fm, {Duration? timeAdd})
- stringToString(String? string, {required EDateFM fmFrom, required EDateFM fmTo, Duration? timeAdd})
# JsonFileUtil
Đọc file json và trả về data dạng Map
- getMapData(String pathJsonFile)
# StringUtil
Mã hoá string sang dạng Md5
- toMd5(String input)
Chuyển định dạng tiền tệ input dạng double
- toCurrency(double number)
xoá đi dấu câu trong Tiếng Việt, dùng trong tìm kiếm
- removeDiacritics(String input)
- Các loại validate
    + isEmail(String input)
    + isPhoneNumber(String input)
    + isValidCCCD(String cccd)
    + isValidPassport(String passport)
# DeviceUtil
Xác định thiết bị dạng điện thoại di động, hoặc ipad, tablet dạng xoay ngang hoặc dọc
# ResponsiveUtil
trả về size dựa vào định dạng thiết bị đang dùng
- getSize({double? iphone, double? ipad, double? ipadLandscape})

