import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled1/core/constant/color.dart';

class CustomListDoctor extends StatelessWidget {
  final void Function()? onTap;
  final String doctorname;
  final ImageProvider<Object>? backgroundImage;
  const CustomListDoctor({super.key, required this.onTap, required this.doctorname, this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Positioned(
                    child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Appcolor.primarycolor1,
                      borderRadius: BorderRadius.circular(100)),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    backgroundImage: backgroundImage ,
                  ),
                )),
                Text(doctorname)
              ],
            )));
  }
}
