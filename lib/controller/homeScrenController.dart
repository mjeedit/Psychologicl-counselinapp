import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/view/homePage.dart';
import 'package:untitled1/view/searchPage.dart';
import 'package:untitled1/view/settingPage.dart';

abstract class Homescreencontroller extends GetxController {
  changePage(int currentPage);
}

class HomeScreenControllerImp extends Homescreencontroller {
  int currentPage = 0;
  List<Widget> listpage = [
    HomePage(),
    SearchPage(),
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
  List<String> titleBottomAppBar = [
    // "4".tr,
    // "5".tr,
    // "6".tr,
    // "7".tr,
  ];
  List<IconData> icontype = [
    Icons.chat_outlined,
    Icons.add_comment_outlined,
    Icons.person_outline,
    Icons.settings_outlined,
  ];
  @override
  changePage(int i) {
    currentPage = i;
    update();
  }
}
