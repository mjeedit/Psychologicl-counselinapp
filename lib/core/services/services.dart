import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services extends GetxService {
  late SharedPreferences sharepref;
  Future<Services> init() async {
    sharepref = await SharedPreferences.getInstance();
    // await Firebase.initializeApp();
    return this;
  }
}

initialservices() async {
  await Get.putAsync(() => Services().init());
}
