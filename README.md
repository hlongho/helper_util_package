Package bao gồm các hàm thông dụng, đã điều chỉnh để dễ sử dụng hơn và được gom chung vào 1 package

# Usage
Có 2 cách để khai báo package vào dự án:
### Download package về và bỏ vào dự án và khai báo vào pubspec.yaml
```
helper_util_package:
  path: ./helper_util_package
```
### Khai báo link github vào pubspec.yaml
```
helper_util_package:
  git:
    url: https://github.com/hlongho/helper_util_package.git
    ref: main
```

# Function
## DateTimeUtils (Get DateTime thứ 2 - chủ nhật của tuần hiện tại hoặc 1 ngày bất kì)
### return DateTime: tương ứng từ thứ 2 đến chủ nhật của tuần hiện tại
```
DateTimeUtils.getMonday
```
```
DateTimeUtils.getTuesday
```
```
DateTimeUtils.getWednesday
```
```
DateTimeUtils.getThursday
```
```
DateTimeUtils.getFriday
```
```
DateTimeUtils.getSaturday
```
```
DateTimeUtils.getSunday
```

### return DateTime: get DateTime của thứ 2 đến chủ nhật (tuần của ngày truyền vào: DateTime time)
    + DateTimeUtils.getMondayByTime(DateTime time)
    + DateTimeUtils.getTuesdayByTime(DateTime time)
    + DateTimeUtils.getWednesdayByTime(DateTime time)
    + DateTimeUtils.getThursdayByTime(DateTime time)
    + DateTimeUtils.getFridayByTime(DateTime time)
    + DateTimeUtils.getSaturdayByTime(DateTime time)
    + DateTimeUtils.getSundayByTime(DateTime time)
 

## FormatDate (Các loại convert giữa String có định dạng EDateFm với nhau hoặc DateTime)
- enum EDateFM {ddMMyyyy,yyyyMMdd,yyyyMMddHHmmss,ddMMyyyyHHmm,yyyyMMddTHHmmssSSSZ,HHmmddMMyyyy}
- các loại định dạng tương ứng với enum EDateFM:
    + dd/MM/yyyy
    + yyyy-MM-dd
    + yyyy-MM-dd HH:mm:ss
    + dd/MM/yyyy HH:mm
    + yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
    + HH:mm dd/MM/yyyy

### convert DateTime sang String có định dạng của enum EDateFM
  - String dateTimeToString(DateTime? date, EDateFM fm)
    + return String
    + DateTime? date: Ngày cần chuyển sang kiểu String
    + EDateFM fm: kiểu định dạng trả về của String

### convert string có định dạng của enum EDateFM sang DateTime
- DateTime stringToDateTime(String? string, EDateFM fm, {Duration? timeAdd})
  + return DateTime
  + String? string: chuỗi cần convert sang DateTime
  + EDateFM fm: kiểu định dạng của String đang truyền vào
  + Duration? timeAdd: cộng thêm thời gian chênh lệch múi giờ nếu có

### convert string có định dạng của EDateFM fmFrom sang string có định dạng EDateFM fmTo
- String stringToString(String? string, {required EDateFM fmFrom, required EDateFM fmTo, Duration? timeAdd})
  + return String
  + String? string: chuỗi cần chuyển định dạng
  + EDateFM fmFrom: kiểu định dạng của String đang truyền vào
  + EDateFM fmTo: kiểu định dạng của String cần trả về
  + Duration? timeAdd: cộng thêm thời gian chênh lệch múi giờ nếu có

## JsonFileUtil (Đọc file json)
### Đọc file json tại assets và trả về data dạng Map. Từ Map sẽ parse sang model cần dùng
- Future<Map> getMapData(String pathJsonFile)
  + return Future<Map>
  + String pathJsonFile: đường dẫn của file json được lưu lại trong source. Ví dụ assets/address/address_pro.json


## StringUtil (Mã hoá md5, định dạng tiền tệ, loại bỏ dấu câu tiếng Việt, kiểm tra chuỗi có đúng định dạng)
### Mã hoá string sang dạng Md5
- String toMd5(String input)
  + Return: String
  + String input: giá trị cần mã hoá Md5

### convert sang định dạng tiền tệ. ví dụ: 100.286.020.524,17
- String toCurrency(var number)
  + Return: String
  + var number: có thể truyền kiểu double, int, Sring để covert sang định dạng tiền tệ

### xoá đi dấu câu trong Tiếng Việt, dùng trong tìm kiếm. ví dụ: removeDiacritics("ngôn ngữ Tiếng Việt") -> "ngon ngu tieng viet"
- String removeDiacritics(String input)
  + return String
  + String input: giá trị truyền vào

### Kiểm tra định dạng email, trả về true nếu đúng định dạng email, ngược lại là false
- bool isEmail(String input)
  + return bool
  + String input: chuỗi cần check định dạng
 
### Kiểm tra định dạng số điện thoại, trả về true nếu đúng định dạng số điện thoại, ngược lại là false
- bool isPhoneNumber(String input)
  + return bool
  + String input: chuỗi cần check định dạng

### Kiểm tra chuỗi có định dạng CCCD, trả về true nếu đúng định dạng CCCD, ngược lại là false
- bool isValidCCCD(String cccd)
  + return bool
  + String input: chuỗi cần check định dạng

### Kiểm tra chuỗi có định dạng Pasport, trả về true nếu đúng định dạng Pasport, ngược lại là false
- bool isValidPassport(String passport)
  + return bool
  + String input: chuỗi cần check định dạng
 

## DeviceUtil (Phát hiện loại thiết bị đang dùng là gì)
- enum Device { iphone, ipad, ipadLandscape }
### Xác định thiết bị dạng điện thoại di động, hoặc ipad, tablet dạng xoay ngang hoặc dọc
- Device getDeviceType()
  + return Device: có 3 loại thiết bị là iphone, ipad dọc, và ipad ngang

## ResponsiveUtil ()
### trả về size dựa vào định dạng thiết bị đang dùng được phát hiện ở DeviceUtil -> getDeviceType
- double getSize({double? iphone, double? ipad, double? ipadLandscape})
  + return double
  + double? iphone: giá trị sẽ trả về nếu thiết bị là iphone
  + double? ipad: giá trị sẽ trả về nếu thiết bị là ipad dọc
  + double? ipadLandscape: giá trị sẽ trả về nếu thiết bị là ipad ngang


## ImageUtil
### Lưu hình ảnh từ link về thiết bị 
- void saveNetworkImage(String url)
  + String url: đường dẫn của hình ảnh cần lưu vào máy

