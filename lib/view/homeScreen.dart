import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:untitled1/controller/homeScrenController.dart';
import 'package:untitled1/core/constant/color.dart';
import 'widgit/custom/customBottomAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());

    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            bottomNavigationBar: BottomAppBar(
                color: Appcolor.primarycolor2,
                notchMargin: 6,
                child: Row(
                  children: [
                    ...List.generate(controller.listpage.length + 1, (index) {
                      int i = index > 2 ? index - 1 : index;
                      return index == 2
                          ? Spacer()
                          : CustomBottomAppBar(
                              onpressedBottomAppBar: () {
                                controller.changePage(i);
                              },
                              icon: controller.icontype[i],
                              active:
                                  controller.currentPage == i ? true : false);
                    })
                  ],
                )),
            body: controller.listpage.elementAt(controller.currentPage)));
  }
}
