import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onboardingcontroller.dart';
import 'widgit/onboarding/butoom.dart';
import 'widgit/onboarding/controller.dart';
import 'widgit/onboarding/slider.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingcontrollerImp());
    return Scaffold(
      body: SafeArea(
        child:Stack(children: [
                      Slideronboarding(),
                   
                   
                      Column(children: [

             SizedBox(height: 650,),
            Controlleronboarding(),
                    Butoom()
                      ],)
         

        ],)
        
        
        //  Column(
        //   children: const [
        //     Slideronboarding(),
        //     SizedBox(height: 100,),
        //     Controlleronboarding(),
        //     Butoom()
        //   ],
        // ),
      ),
    );
  }
}
