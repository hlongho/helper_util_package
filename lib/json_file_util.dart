import 'dart:convert';

import 'package:flutter/services.dart';

class JsonFileUtil {
  Future<Map> getMapData(String pathJsonFile) async {
    String json;
    json = await rootBundle.loadString(pathJsonFile);

    Map<String, dynamic> map = {};
    map = jsonDecode(json);
    return map;
    // Parse sang model để sử dụng
    // return T.fromJson(map).address ?? [];
  }
}
