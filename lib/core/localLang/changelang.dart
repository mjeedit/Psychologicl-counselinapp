import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/apptheme.dart';
import '../services/services.dart';

class Localecontroller extends GetxController {
  Locale? lang;
  Services myservices = Get.find();

  ThemeData apptheme = themeEnglish;
  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharepref.setString("lang", langcode);
    apptheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharepreflocale = myservices.sharepref.getString("lang");
    if (sharepreflocale == "ar") {
      lang = const Locale("ar");
      apptheme = themeArabic;
    } else if (sharepreflocale == "en") {
      lang = const Locale("en");
      apptheme = themeEnglish;
    } else {
      lang = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
