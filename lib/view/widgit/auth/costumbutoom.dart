
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/constant/color.dart';

class Costumbutoom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Costumbutoom({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: MaterialButton(
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(vertical: 15),
        

        onPressed: onPressed,
        child: Text(text,style: TextStyle(color: Appcolor.primarycolor1),),
        color: Appcolor.primarycolor2,
      ),
    );
  }
}
