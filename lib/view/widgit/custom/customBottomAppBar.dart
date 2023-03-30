import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/color.dart';

class CustomBottomAppBar extends StatelessWidget {
  final void Function()? onpressedBottomAppBar;
  final IconData? icon;
  // final String dataStringBottom;
  final bool? active;
   CustomBottomAppBar(
      {super.key,
      required this.onpressedBottomAppBar,
      required this.icon,
      // required this.dataStringBottom,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressedBottomAppBar,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(
          icon,
          color: active == true?Appcolor.primarycolor1:Colors.white,
        ),
        // Text(
        //   dataStringBottom,
        //   style: TextStyle(color: active == true?Appcolor.primarycolor1:Colors.white),
        // )
      ]),
    );
  }
}
