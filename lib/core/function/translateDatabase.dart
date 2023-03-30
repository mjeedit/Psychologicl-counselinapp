import 'package:get/get.dart';
import 'package:untitled1/core/services/services.dart';

TranslateDatabase(columnAr, columnEn) {
  Services myservices = Get.find();
  if (myservices.sharepref.getString("lang") == "ar") {
    return columnAr;
  } else
    () {
      return columnEn;
    };
}
