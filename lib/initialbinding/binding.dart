import 'package:get/get.dart';
import 'package:untitled1/core/class/crud.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
