import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/core/services/services.dart';

class CustomLine extends StatelessWidget {

  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
        Services myservices = Get.find();

    return Container(
      child: Column(children: [
        
        Container(
          padding:myservices.sharepref.getString("lang") == "ar" ? EdgeInsets.only(right: 280):EdgeInsets.only(left: 280),
          child: MaterialButton(
            onPressed: () {

            },
            child: Text(
              "14".tr,
              style: TextStyle(color: Appcolor.primarycolor4),
            ),
          ),
        ),
        Container(
            height: 3,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Appcolor.primarycolor2,
                borderRadius: BorderRadius.circular(30))),

        Text(
          "15".tr,
          style: TextStyle(color: Appcolor.primarycolor4),
        ),
      ]),
    );
  }
}
