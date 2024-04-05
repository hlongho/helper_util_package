Package bao gồm các hàm thông dụng, đã điều chỉnh để dễ sử dụng hơn và được gom chung vào 1 package

# Usage
Có 2 cách để khai báo package vào dự án:
## Download package về và bỏ vào dự án và khai báo vào pubspec.yaml
- helper_util_package:
  + path: ./helper_util_package
## Khai báo link github vào pubspec.yaml
- helper_util_package:
   + git:
      + url: https://github.com/hlongho/helper_util_package.git
      + ref: main

# Function
## DateTimeUtils
- Trả về kiểu DateTime tương ứng từ thứ 2 đến chủ nhật của tuần hiện tại
    + DateTimeUtils.getMonday 
    + DateTimeUtils.getTuesday
    + DateTimeUtils.getWednesday
    + DateTimeUtils.getThursday
    + DateTimeUtils.getFriday
    + DateTimeUtils.getSaturday
    + DateTimeUtils.getSunday
- Trả về DateTime tương ứng từ thứ 2 đến chủ nhật của tuần ngày truyền vào DateTime time
    + DateTimeUtils.getMondayByTime(DateTime time)
    + DateTimeUtils.getTuesdayByTime(DateTime time)
    + DateTimeUtils.getWednesdayByTime(DateTime time)
    + DateTimeUtils.getThursdayByTime(DateTime time)
    + DateTimeUtils.getFridayByTime(DateTime time)
    + DateTimeUtils.getSaturdayByTime(DateTime time)
    + DateTimeUtils.getSundayByTime(DateTime time)
 

## FormatDate
- enum EDateFM {ddMMyyyy,yyyyMMdd,yyyyMMddHHmmss,ddMMyyyyHHmm,yyyyMMddTHHmmssSSSZ,HHmmddMMyyyy}
- các loại định dạng tương ứng với enum EDateFM:
    + dd/MM/yyyy
    + yyyy-MM-dd
    + yyyy-MM-dd HH:mm:ss
    + dd/MM/yyyy HH:mm
    + yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
    + HH:mm dd/MM/yyyy


trả về kiểu String: convert datetime truyền vào sang string với định dạng của enum EDateFM
  - String dateTimeToString(DateTime? date, EDateFM fm)
    + DateTime? date: Ngày cần chuyển sang kiểu String
    + EDateFM fm: kiểu định dạng trả về của String


trả về DateTime: convert string có định dạng của enum EDateFM
- DateTime stringToDateTime(String? string, EDateFM fm, {Duration? timeAdd})
  + String? string: chuỗi cần convert sang DateTime
  + EDateFM fm: kiểu định dạng của String đang truyền vào
  + Duration? timeAdd: cộng thêm thời gian chênh lệch múi giờ nếu có


trả về kiểu String: convert string có định dạng của EDateFM fmFrom sang string có định dạng EDateFM fmTo
- String stringToString(String? string, {required EDateFM fmFrom, required EDateFM fmTo, Duration? timeAdd})
  + String? string: chuỗi cần chuyển định dạng
  + EDateFM fmFrom: kiểu định dạng của String đang truyền vào
  + EDateFM fmTo: kiểu định dạng của String cần trả về
  + Duration? timeAdd: cộng thêm thời gian chênh lệch múi giờ nếu có


## JsonFileUtil
Đọc file json và trả về data dạng Map
- getMapData(String pathJsonFile)


## StringUtil
- Mã hoá string sang dạng Md5
    + toMd5(String input)
- Chuyển định dạng tiền tệ input dạng double
    + toCurrency(double number)
- xoá đi dấu câu trong Tiếng Việt, dùng trong tìm kiếm
    + removeDiacritics(String input)
- Các loại validate
    + isEmail(String input)
    + isPhoneNumber(String input)
    + isValidCCCD(String cccd)
    + isValidPassport(String passport)
 

## DeviceUtil
Xác định thiết bị dạng điện thoại di động, hoặc ipad, tablet dạng xoay ngang hoặc dọc


## ResponsiveUtil
trả về size dựa vào định dạng thiết bị đang dùng
- getSize({double? iphone, double? ipad, double? ipadLandscape})


## ImageUtil
Lưu hình ảnh từ link về thiết bị 
- saveNetworkImage(String url)

