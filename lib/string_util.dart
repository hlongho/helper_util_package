import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';

class StringUtil {
  static String toMd5(String input) {
    var bytesToHash = utf8.encode(input);
    var md5Digest = md5.convert(bytesToHash);
    return '$md5Digest';
  }

  static String toCurrency(var input) {
    final currencyFormatter = NumberFormat('#,###', 'ID');
    if (input is double || input is int) {
      return currencyFormatter.format(input); // 100.286.020.524,17
    } else {
      try {
        double number = double.parse(input);
        return currencyFormatter.format(number);
      } catch (e) {
        print(e);
      }
    }
    return "error";
  }

  static String removeDiacritics(String input) {
    return input
        .replaceAll(RegExp(r'[àáạảãâầấậẩẫăằắặẳẵ]', caseSensitive: false), 'a')
        .replaceAll(RegExp(r'[èéẹẻẽêềếệểễ]', caseSensitive: false), 'e')
        .replaceAll(RegExp(r'[ìíịỉĩ]', caseSensitive: false), 'i')
        .replaceAll(RegExp(r'[òóọỏõôồốộổỗơờớợởỡ]', caseSensitive: false), 'o')
        .replaceAll(RegExp(r'[ùúụủũưừứựửữ]', caseSensitive: false), 'u')
        .replaceAll(RegExp(r'[ỳýỵỷỹ]', caseSensitive: false), 'y')
        .replaceAll(RegExp(r'[đ]', caseSensitive: false), 'd')
        .replaceAll('-', '')
        .replaceAll('.', '')
        .toLowerCase();
  }

  static bool isEmail(String input) {
    final RegExp regex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return regex.hasMatch(input);
  }

  static bool isPhoneNumber(String input) {
    final RegExp regex = RegExp(
      r'^(03[2-9]|05[689]|07[06-9]|08[1-689]|09[0-46-9])[0-9]{7}$',
    );
    return regex.hasMatch(input);
  }

  static bool isValidCCCD(String cccd) {
    // Regex pattern để kiểm tra CCCD có 12 số hoặc 9 số
    String pattern = r'^(?:\d{9}|\d{12})$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(cccd);
  }

  static bool isValidPassport(String passport) {
    // Regex pattern cho định dạng Passport (ví dụ: "AB1234567")
    String pattern = r'^[A-Za-z]{2}\d{7}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(passport);
  }
}
