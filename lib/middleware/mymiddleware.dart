import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/core/services/services.dart';

class Mymiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  Services myservices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharepref.getString("step") == "2") {
      return const RouteSettings(name: Approutes.homescreen);
    }
      if (myservices.sharepref.getString("step") == "3") {
      return const RouteSettings(name: Approutes.homescreenDoctor);
    }
    if (myservices.sharepref.getString("step") == "1") {
      return const RouteSettings(name: Approutes.loginuser);
    }
    return null;
  }
}
