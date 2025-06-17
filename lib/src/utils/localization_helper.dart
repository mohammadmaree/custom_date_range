import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationManager {
  static Map<String, dynamic> _localizedStrings = {};

  static Future<void> load(Locale locale) async {
    String jsonString;
    if (locale.languageCode == 'ar') {
      jsonString = await rootBundle.loadString('packages/custom_date_range_picker/src/lang/ar.json');
    } else {
      jsonString = await rootBundle.loadString('packages/custom_date_range_picker/src/lang/en.json');
    }

    _localizedStrings = json.decode(jsonString);
  }

  static String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}
