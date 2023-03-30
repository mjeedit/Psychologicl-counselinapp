import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled1/core/constant/color.dart';

class AppBarChatsPage extends StatelessWidget {
  final ImageProvider<Object>? backgroundImage;
  final void Function()? onPressed;
  final String name;
  const AppBarChatsPage({super.key, this.backgroundImage, this.onPressed, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        decoration: BoxDecoration(
          color: Appcolor.primarycolor2,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
        ),
        child: Row(
          children: [

            ListTile(leading: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CircleAvatar(
                  backgroundColor: Appcolor.primarycolor1,
                  radius: 25,
                  backgroundImage: backgroundImage,
                )),title:Text(name,style: Theme.of(context).appBarTheme.titleTextStyle,),),
        
                
             
            SizedBox(
              width: 220,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child:IconButton(onPressed: onPressed,icon: Icon(Icons.propane),)
            )
          ],
        ));
  }
}
