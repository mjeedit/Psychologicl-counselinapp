import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/homepageController.dart';
import 'package:untitled1/core/class/statusrequest.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/view/homeScreen.dart';
import 'package:untitled1/data/model/user.dart' as UserModel;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class SignupUsercontroller extends GetxController {
  signup();
  goTologin();
  goTockeckemail();
}

class SignupUsercontrollerImp extends SignupUsercontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  HomepageControllerImp homepageController =
      Get.put(HomepageControllerImp(), permanent: true);
  late String username;
  late String email;
  late String number;
  late String password;
  late String phone;

  StatusRequest statusRequest = StatusRequest.none;

  @override
  goTologin() {
    Get.offAllNamed(Approutes.loginuser);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  signup() async {
    var formdata = formstate.currentState;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: this.email, password: this.password);
      UserModel.User user = UserModel.User(
          id: userCredential.user!.uid,
          name: this.username,
          iimageurld:
              'https://i0.wp.com/www.mnleadership.org/wp-content/uploads/2017/02/Anonymous-Avatar.png?ssl=1');
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'userName': this.username,
        'isDotor': false,
        'imageUrl':
            'https://i0.wp.com/www.mnleadership.org/wp-content/uploads/2017/02/Anonymous-Avatar.png?ssl=1'
      });
      this.homepageController.curntuser = user;
      this.homepageController.getChates();
      Get.off(() => HomeScreen());
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
