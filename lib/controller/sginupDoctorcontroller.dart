import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/approutes.dart';
import '../core/class/statusrequest.dart';
import 'package:untitled1/data/model/user.dart' as Model;
import '../core/function/handlingdata.dart';

abstract class SignupDoctorcontroller extends GetxController {
  signup();
  goTologin();
  goTockeckemail();
}

class SignupDoctorcontrollerImp extends SignupDoctorcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late String username;
  late String email;
  late String number;
  late String password;

  StatusRequest statusRequest = StatusRequest.none;

  // SignupData testData = SignupData(Get.find());

  List data = [];

  @override
  goTologin() {
    Get.toNamed(Approutes.logindoctor);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  signup() async {
    var formdata = formstate.currentState;
    try {
      print('ok');
      print(this.username);
      print(this.email);
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: this.email, password: this.password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  goTockeckemail() {
    // TODO: implement goTockeckemail
    throw UnimplementedError();
  }
}
