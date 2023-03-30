import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onboardingcontroller.dart';

import '../../../core/constant/color.dart';

class Butoom extends GetView<OnboardingcontrollerImp> {
  const Butoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration( color: Appcolor.primarycolor2,borderRadius: BorderRadius.circular(30)
),
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(bottom: 20,),
      
      child: MaterialButton(
      
        onPressed: () {
          controller.next();
        },
        child: Text("Next",style: TextStyle(color: Appcolor.primarycolor1),),
        
        
      ),
    
    
    );
  }
}
