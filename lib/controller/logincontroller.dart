import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/homepageController.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/core/services/services.dart';
import 'package:untitled1/view/homeScreen.dart';
import '../core/class/statusrequest.dart';
import 'package:untitled1/data/model/user.dart' as UserModel;

abstract class LoginUsercontroller extends GetxController {
  login();
  goTosginup();
  goToforgetpassword();
  goTosginupasDoctor();
}

class LoginUsercontrollerImp extends LoginUsercontroller {
  GlobalKey<FormState> formstateLogin = GlobalKey<FormState>();

  late String email;
  late String password;
  HomepageControllerImp homepageController =
      Get.put(HomepageControllerImp(), permanent: true);
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
      UserModel.User? user;
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .get()
          .then((value) {
        user = UserModel.User(
            id: userCredential.user!.uid,
            name: value.data()!['userName'],
            iimageurld: value.data()!['imageUrl']);
      });
      this.homepageController.curntuser = user!;
      this.homepageController.getChates();
      Get.off(Approutes.homescreen);
      // myservices.sharepref.setString("step", "2");

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  goToforgetpassword() {
    // TODO: implement goToforgetpassword
    throw UnimplementedError();
  }

  @override
  goTosginup() {
    // TODO: implement goTosginup
    Get.toNamed(Approutes.sginupuser);
  }

  @override
  goTosginupasDoctor() {
    Get.toNamed(Approutes.logindoctor);
  }
}
