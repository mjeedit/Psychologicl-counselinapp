import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/core/localLang/changelang.dart';
import 'package:untitled1/view/widgit/onboarding/lang/langcustom.dart';

import '../core/constant/approutes.dart';

class Lang extends GetView<Localecontroller> {
  const Lang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.language_sharp,
              size: 200,
              color: Appcolor.primarycolor2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 30,
            ),
            Langbutoom(
              textbutoom: "AR",
              onPressed: () {
                controller.changelang("ar");
                    Get.offNamed(Approutes.homescreen);


                

              },
            ),
            Langbutoom(
              textbutoom: "EN",
              onPressed: () {
                controller.changelang("en");
                    Get.offNamed(Approutes.homescreen);

              },
            )
          ],
        ),
      ),
    );
  }
}
