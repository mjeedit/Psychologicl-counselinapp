import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/core/services/services.dart';
import '../core/class/statusrequest.dart';

abstract class LoginDoctorcontroller extends GetxController {
  login();
  goTosginup();
  goToforgetpassword();
  goTosginupasuser();
}

class LoginDoctorcontrollerImp extends LoginDoctorcontroller {
  GlobalKey<FormState> formstateLogin = GlobalKey<FormState>();

  late String email;
  late String password;

  Services myservices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;

  bool isShowpassword = true;
  showPassword() {
    isShowpassword = isShowpassword == true ? isShowpassword == false : true;
    update();
  }

  @override
  login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: this.email, password: this.password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToforgetpassword() {
    // TODO: implement goToforgetpassword
    throw UnimplementedError();
  }

  @override
  goTosginup() {
    // TODO: implement goTosginup
    Get.offAllNamed(Approutes.sginupdoctor);
  }

  @override
  goTosginupasuser() {
    Get.offAllNamed(Approutes.loginuser);
  }
}
