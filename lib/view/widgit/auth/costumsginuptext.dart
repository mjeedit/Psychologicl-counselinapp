import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../core/constant/color.dart';

class Costumsginuptext extends StatelessWidget {
  final void Function()? onTap;
  final String sginuptext;
  final String sginuptext2;
  
  

  const Costumsginuptext({super.key, this.onTap, required this.sginuptext, required this.sginuptext2});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(sginuptext,style: TextStyle(color: Appcolor.primarycolor1),),
            InkWell(
              onTap: onTap,
              child: Text(
              sginuptext2,style: TextStyle(color: Appcolor.primarycolor2),
              ),
            ),
          ],
        ));
  }
}
