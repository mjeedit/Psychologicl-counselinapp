import 'package:flutter/material.dart';
import 'package:untitled1/controller/searchPageController.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:get/get.dart';
import 'package:untitled1/view/widgit/custom/customAppar.dart';
import 'package:untitled1/view/widgit/custom/customExpandedChats.dart';

class SearchPage extends StatelessWidget {
  SearchPageController controller = Get.put(SearchPageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPageController>(
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100 - 43,
              ),
              CustomAppar(
                onPressedNotifcation: () {},
                onPressedSearch: () {},
                hintText: "3".tr,
              ),
              Container(
                height: 573,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Appcolor.primarycolor2),
                child: controller.users.isEmpty
                    ? Center(
                        child: Text(
                        'No data yet',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))
                    : ListView.builder(
                        itemCount: controller.users.length,
                        itemBuilder: (context, index) {
                          return CustomExpanded(
                            onTap: () {
                              controller.toChatPage(index);
                            },
                            title: "${controller.users[index].name}",
                            backgroundImage: NetworkImage(
                                controller.users[index].iimageurld),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
