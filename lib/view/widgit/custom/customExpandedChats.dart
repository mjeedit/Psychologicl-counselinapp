import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled1/core/constant/color.dart';

class CustomExpanded extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final String? subtitle;
  final String? trailing;
  final ImageProvider<Object>? backgroundImage;
  const CustomExpanded(
      {super.key,
      this.onTap,
      required this.title,
      this.subtitle = '',
      this.trailing = '',
      this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle!),
      trailing: Text(trailing!),
      leading: CircleAvatar(
        backgroundImage: backgroundImage,
        radius: 30,
      ),
    ));
  }
}
