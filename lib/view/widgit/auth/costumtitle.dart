import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Costumtitle extends StatelessWidget {
  final String title;
  const Costumtitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
