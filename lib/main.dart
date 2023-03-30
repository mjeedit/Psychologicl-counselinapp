import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/core/localLang/changelang.dart';
import 'package:untitled1/core/localLang/translate.dart';
import 'package:untitled1/core/services/services.dart';
import 'package:untitled1/initialbinding/binding.dart';
import 'package:untitled1/root.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Localecontroller controller = Get.put(Localecontroller());
    return GetMaterialApp(
      translations:Locallang() ,
      debugShowCheckedModeBanner: false,
      locale: controller.lang,
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Appcolor.primarycolor1),
        bodyText1: TextStyle(fontSize: 17, color: Appcolor.primarycolor1),
      )),
      initialBinding:InitialBindings() ,
      
      getPages: route,
    );
  }
}