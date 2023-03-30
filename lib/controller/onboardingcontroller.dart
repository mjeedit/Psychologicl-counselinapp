import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/data/datasoruse/static/static.dart';

import '../core/services/services.dart';

abstract class onboardingcntroller extends GetxController {
  next();
  onchange(int index);
}

class OnboardingcontrollerImp extends onboardingcntroller {
  late PageController pagecontroller;
  int currentpage = 0;
  Services myServices = Get.find();
  @override
  next() {
    currentpage++;
    if (currentpage > onBoardinglist.length - 1) {
      myServices.sharepref.setString("step", "1");
      Get.offAllNamed(Approutes.loginuser);
    } else {
      pagecontroller.animateToPage(currentpage,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onchange(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    
    pagecontroller = PageController();
    super.onInit();
  }
}
