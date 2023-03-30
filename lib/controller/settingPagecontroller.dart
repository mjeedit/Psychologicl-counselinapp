import 'package:get/get.dart';
import 'package:untitled1/core/constant/approutes.dart';
import '../core/services/services.dart';

abstract class SettingPageController extends GetxController {
  logout();
}

class SettingPageControllerImp extends SettingPageController {
  Services myservices = Get.find();
  @override
  logout() {
    myservices.sharepref.clear();
    Get.offAllNamed(Approutes.loginuser);
  }
}
