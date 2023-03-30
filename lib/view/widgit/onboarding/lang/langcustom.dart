import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled1/core/constant/color.dart';

class Langbutoom extends StatelessWidget {
  final String textbutoom;
  final void Function()? onPressed;

  const Langbutoom({super.key, required this.textbutoom, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          textbutoom,
          style: Theme.of(context).textTheme.headline1,
        ),color: Appcolor.primarycolor2,
      ),
    );
  }
}
