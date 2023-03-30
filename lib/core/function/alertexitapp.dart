import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alirtExitapp() {
  Get.defaultDialog(
      title: "warning",
      middleText: "do you want to exit the app",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text("ok")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("cancel")),
      ]);
  return Future.value(true);
}
