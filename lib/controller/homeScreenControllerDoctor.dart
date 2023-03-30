import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/view/homePage.dart';
import 'package:untitled1/view/homepageDoctor.dart';
import 'package:untitled1/view/settingPage.dart';

abstract class HomescreencontrollerDoctor extends GetxController {
  changePage(int currentPage);
}

class HomescreencontrollerDoctorImp extends HomescreencontrollerDoctor {
  int currentPage = 0;
  List<Widget> listpage = [
   HomePageDoctor(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text("favorite"),
        )
      ],
    ),
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text("profile"),
        )
      ],
    ),
      SettingPage(),
  ];
  // List<String> titleBottomAppBar = [
  //   "4".tr,
  //   "5".tr,
  //   "6".tr,
  //   "7".tr,
    

  // ];
    List<IconData> icontype = [
    Icons.home_outlined,
   Icons.favorite_outline,
     Icons.person_outline,

  Icons.settings_outlined,

  ];

  @override
  changePage(int i) {
    currentPage = i;
    update();
  }
}
