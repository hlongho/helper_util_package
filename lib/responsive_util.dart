import 'package:helper_util_package/string_util.dart';

import 'device_util.dart';

class ResponsiveUtil {
  /// get size by DeviceType
  static double getSize({double? iphone, double? ipad, double? ipadLandscape}) {
    switch (DeviceUtil.getDeviceType()) {
      case Device.iphone:
        return iphone ?? 100;
      case Device.ipad:
        return ipad ?? 200;
      case Device.ipadLandscape:
        return ipadLandscape ?? 200;
    }
  }
}
