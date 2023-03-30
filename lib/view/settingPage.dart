import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/settingPagecontroller.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/core/constant/color.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingPageControllerImp controller = Get.put(SettingPageControllerImp());
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: Get.width / 2,
                decoration: BoxDecoration(
                    color: Appcolor.primarycolor2,
                    borderRadius: BorderRadius.circular(15)),
              ),
              Positioned(
                  top: Get.width / 3.5,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1680202276~exp=1680202876~hmac=1968fff3bb2862cce359a50ba757c935b731db3c5ca85d139de50ebaa8bc5912'),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  title: Text("8".tr),
                  trailing: Icon(
                    Icons.person_outlined,
                    color: Appcolor.primarycolor1,
                  ),
                ),
                Divider(),
                ListTile(
                    title: Text("9".tr),
                    trailing: Switch(value: true, onChanged: (val) {})),
                Divider(),
                InkWell(
                  onTap: () {
                    Get.toNamed(Approutes.lang);
                  },
                  child: ListTile(
                      title: Text("10".tr),
                      trailing: Icon(Icons.arrow_forward_outlined)),
                ),
                Divider(),
                ListTile(
                  title: Text("11".tr),
                  trailing: Icon(Icons.contact_mail_outlined,
                      color: Appcolor.primarycolor1),
                ),
                Divider(),
                ListTile(
                  onTap: () {
                    controller.logout();
                  },
                  title: Text("12".tr),
                  trailing: Icon(Icons.exit_to_app_outlined,
                      color: Appcolor.primarycolor1),
                ),
                Divider(),
                ListTile(
                  onTap: () {
                    Get.toNamed(Approutes.aboutus);
                  },
                  title: Text("13".tr),
                  trailing: Icon(Icons.report_outlined,
                      color: Appcolor.primarycolor1),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
