import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onboardingcontroller.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/data/datasoruse/static/static.dart';

class Controlleronboarding extends StatelessWidget {
  const Controlleronboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        
        child: Column(
          children: [
       GetBuilder<OnboardingcontrollerImp>(builder: ((controller) =>  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardinglist.length,
                    (index) => AnimatedContainer(
                          margin: EdgeInsets.only(right: 10),
                          duration: const Duration(milliseconds: 900),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: controller.currentpage==index?Appcolor.primarycolor2:Appcolor.primarycolor1,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ))),
        
    
          ],
        ));
  }
}
