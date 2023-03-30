import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/chatPageController.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/view/widgit/custom/customExpandedChats.dart';
import '../controller/homepageController.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageControllerImp>(
      builder: (controller) => Scaffold(
          body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 33),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Appcolor.primarycolor2,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                        child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        backgroundColor: Appcolor.primarycolor1,
                        radius: 25,
                        child: Image.network(controller.curntuser.iimageurld),
                      ),
                    )),
                  ],
                ),
               Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Text(
                  "2".tr,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.primarycolor2),
                ),
              )
              ],
            ),
          ),
          //    CustomAppar(
          //    onPressedNotifcation: () {},
          //    onPressedSearch: () {},
          //    hintText: "3".tr,
          //  ),

          //    Container(
          //      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          //      height: 110,
          //    child: ListView.builder(
          //        scrollDirection: Axis.horizontal,
          //        itemCount: controller.users.length,
          //        itemBuilder: (context, index) {
          //          User user = controller.users[index];
          //          return CustomListDoctor(
          //            onTap: () {
          //              controller.goToChatsPage();
          //            },
          //            doctorname: "${user.name}",
          //            backgroundImage: NetworkImage(user.iimageurld),
          //          );
          //        }),
          //  ),

          Container(
            height: 700,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Appcolor.primarycolor2),
            child: controller.chats.isEmpty
                ? Center(
                    child: Text(
                    'No data yet',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
                : ListView.builder(
                    itemCount: controller.chats.length,
                    itemBuilder: (context, index) {
                      return CustomExpanded(
                        onTap: () {
                          ChatPageController c = Get.put(ChatPageController());
                          c.userName = controller.chats[index].SenderName;
                          c.currntUserId = controller.curntuser.id;
                          c.imageUrl = controller.chats[index].imageUrl;
                          c.chatId = controller.chats[index].id;
                          c.getMesseges();
                          Get.toNamed(Approutes.chatspage);
                        },
                        title: "${controller.chats[index].SenderName}",
                        subtitle: "${controller.chats[index].lastMessage}",
                        trailing:
                            "${controller.chats[index].time.hour}:${controller.chats[index].time.minute}",
                        backgroundImage:
                            NetworkImage(controller.chats[index].imageUrl),
                      );
                    },
                  ),
          ),
        ],
      )),
    );
  }
}
