import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled1/core/constant/color.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
            Container(alignment: Alignment.center,  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Text("What is psychological counseling App?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Appcolor.primarycolor1),)),
          Stack(
            children: [
              Container(
              height: 1400,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Appcolor.primarycolor2,
                    borderRadius: BorderRadius.circular(25)),
              ),
            
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Text(
                    " We are a group of students who, by being a part of the community and witnessing the problems that affect both young people and adults, we have noticed the importance of mental health and the fear people have of discussing it openly in Iraq. Therefore, we have decided to create this application to raise awareness about mental health and to provide a platform where individuals can freely express their problems to Discuss it with specialists. Our application offers various features and We hope that many doctors and counselors specialized in the field of mental health will organize for us. However, due to time constraints, the application still has some shortcomings, such as the need to develop new chat functions, a password reset feature, and the ability to upload a profile picture and lastly the backend for doctor account . Finally, we are currently in need of sufficient support and financial investment to complete the development of this application and make it a reality, as it has a tremendous importance in improving the Iraqi community.\n \n Are you struggling with mental health issues but don't know where to turn? \n Our application is here to help. With our innovative health button feature, you can connect with experienced psychiatrists without ever having to reveal your identity. \n \n Our team of trained professionals is dedicated to providing confidential and compassionate support to anyone in need. No matter what you're going through, we're here to listen and help you find the resources you need to feel better. \n \n With our easy-to-use interface, you can access our services from anywhere, at any time. Whether you're looking for a one-time consultation or ongoing support, our psychiatrists are available to help you navigate the challenges of mental health. \n \n Don't let stigma or shame prevent you from seeking the help you deserve. With our health button feature, you can access top-notch mental health care without ever leaving your home. Download our app today and take the first step towards a brighter, healthier future ",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Appcolor.primarycolor1)
                    
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}
