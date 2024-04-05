import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ImageUtil {
  ImageUtil._();

  static final ImageUtil _instance = ImageUtil._();

  static ImageUtil get instance => _instance;

  saveNetworkImage(String url) async {
    await EasyLoading.show(
      status: 'Downloading...',
    );
    var response = await Dio()
        .get(url, options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 60,
        name: "image") as Map;
    EasyLoading.dismiss();
    if (result.containsKey("isSuccess") && result["isSuccess"]) {
      EasyLoading.showSuccess("Success");
      return;
    }
    EasyLoading.showError("Fail");
  }
}
