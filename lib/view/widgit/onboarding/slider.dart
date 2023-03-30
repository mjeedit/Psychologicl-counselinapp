import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onboardingcontroller.dart';
import 'package:untitled1/data/datasoruse/static/static.dart';

class Slideronboarding extends GetView<OnboardingcontrollerImp> {
  const Slideronboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (value) {
          controller.onchange(value);
        },
        itemCount: onBoardinglist.length,
        itemBuilder: (context, i) =>
        
        //  Column(
        //   children: [
            Container(
              // padding: EdgeInsets.only(top: 50),
              // height: 350,


              child: Image.asset(onBoardinglist[i].image,fit: BoxFit.fitHeight,),
            ),
            
            // Container(
            //   padding: EdgeInsets.only(top: 10),
            //   child: Text(
            //     onBoardinglist[i].title,
            //     style: Theme.of(context).textTheme.headline1
            //   ),
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            //         Container(
                      
            //   alignment: Alignment.center,
            //   width: double.infinity,
            //   child: Text(
            //     onBoardinglist[i].body,
            //     textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,
            //   ),
            // )
    
        //   ],
        // ),
      ),
    );
  }
}
