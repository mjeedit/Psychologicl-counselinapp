import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/controller/sginupDoctorcontroller.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/view/widgit/auth/costumbutoom.dart';
import 'package:untitled1/view/widgit/auth/costumsginuptext.dart';
import 'package:untitled1/view/widgit/auth/costumtitle.dart';
import '../core/function/alertexitapp.dart';
import '../core/function/validator.dart';
import 'widgit/auth/costumlogin.dart';

class SignupDoctor extends StatelessWidget {
  const SignupDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignupDoctorcontrollerImp());
    return Scaffold(
        body: WillPopScope(
            onWillPop: alirtExitapp,
            child: GetBuilder<SignupDoctorcontrollerImp>(
                builder: ((controller) => Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          Costumtitle(title: "Sign up Doctor"),
                          SizedBox(
                            height: 60,
                          ),
                          Costumlogin(
                            isnumber: false,
                            hintText: "enter your username",
                            label: "username",
                            suffixIcon: Icons.person_outlined,
                            onChanged: (value) {
                              controller.username = value;
                            },
                            valid: (val) {
                              return validinput(5, 8, 'username', val!);
                            },
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Costumlogin(
                            isnumber: false,
                            onChanged: (value) {
                              controller.email = value;
                            },
                            hintText: "Enter your Email",
                            label: "Email",
                            suffixIcon: Icons.email_outlined,
                            valid: (val) {
                              //  return validinput(4, 40, 'email', val!);
                            },
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Costumlogin(
                            onChanged: (value) {
                              controller.password = value;
                            },
                            isnumber: false,
                            hintText: "Enter your password",
                            label: "password",
                            suffixIcon: Icons.password_outlined,
                            valid: (val) {
                              return validinput(5, 8, 'password', val!);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 65,
                          ),
                          Costumbutoom(
                            text: "sign up",
                            onPressed: () {
                              controller.signup();
                            },
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Costumsginuptext(
                            sginuptext: " Have account? ",
                            sginuptext2: "LOGIN",
                            onTap: () {
                              Get.toNamed(Approutes.logindoctor);
                            },
                          ),
                          Costumsginuptext(
                            sginuptext: "Signup as a",
                            sginuptext2: " User",
                            onTap: () {
                              Get.offAllNamed(Approutes.Signup);
                            },
                          )
                        ],
                      ),
                    ))))));
  }
}
