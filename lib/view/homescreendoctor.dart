import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/view/widgit/custom/customBottomAppBar.dart';
import '../controller/homeScreenControllerDoctor.dart';

class HomeScreenDoctor extends StatelessWidget {
  const HomeScreenDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomescreencontrollerDoctorImp());

    return GetBuilder<HomescreencontrollerDoctorImp>(
        builder: (controller) => Scaffold(
            bottomNavigationBar: BottomAppBar(
                color: Appcolor.primarycolor2,
                notchMargin: 6,
                child: Row(
                  children: [
                    ...List.generate(controller.listpage.length + 1, (index) {
                      //collection of list in homeScreenController i use to make simple code and short
                      //  the variable (i) use to make spacer  CircularNotchedRectangle for  floatingActionButton
                      int i = index > 2 ? index - 1 : index;
                      return index == 2
                          ? Spacer()
                          : CustomBottomAppBar(
                              onpressedBottomAppBar: () {
                                controller.changePage(i);
                              },
                              icon: controller.icontype[i],
                              // dataStringBottom:
                              //     controller.titleBottomAppBar[i],
                              active:
                                  controller.currentPage == i ? true : false);
                    })
                    // Row(children: [
                    // CustomBottomAppBar(onpressedBottomAppBar: (){controller.changePage(0);}, icon: Icons.home_outlined, dataStringBottom: "Home", active: controller.currentPage==0?true:false, ),     simple changepage
                    // CustomBottomAppBar(onpressedBottomAppBar: (){controller.changePage(1);}, icon: Icons.favorite_outline, dataStringBottom: "faverite", active: controller.currentPage==1?true:false)
                    // ],),
                    // Spacer(),
                    //  Row(children: [
                    //   CustomBottomAppBar(onpressedBottomAppBar: (){controller.changePage(2);}, icon: Icons.person_outlined, dataStringBottom: "profile",active: controller.currentPage==2?true:false),
                    //   CustomBottomAppBar(onpressedBottomAppBar: (){controller.changePage(3);}, icon: Icons.settings_outlined, dataStringBottom: "setting",active: controller.currentPage==3?true:false )
                    // ],)
                  ],
                )),
            body: controller.listpage.elementAt(controller.currentPage)));
  }
}
