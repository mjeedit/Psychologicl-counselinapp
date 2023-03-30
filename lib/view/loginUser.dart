import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/controller/logincontroller.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/core/constant/imageasset.dart';
import 'package:untitled1/core/function/alertexitapp.dart';
import 'package:untitled1/view/widgit/auth/costumbutoom.dart';
import 'package:untitled1/view/widgit/auth/costumsginuptext.dart';
import 'package:untitled1/view/widgit/auth/costumtitle.dart';

import '../core/class/handlingDataView.dart';
import '../core/class/statusrequest.dart';
import '../core/function/validator.dart';
import 'widgit/auth/costumlogin.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginUsercontrollerImp());
    return Scaffold(
        body: WillPopScope(
            onWillPop: alirtExitapp,
            child: GetBuilder<LoginUsercontrollerImp>(
              builder: (controller) => Container(
                padding: EdgeInsets.all(20),
                child: Form(
                    key: controller.formstateLogin,
                    child: ListView(
                      children: [
                        const Costumtitle(title: "Login User"),
                        const SizedBox(
                          height: 200,
                        ),
                        
                        Costumlogin(
                          onChanged: (v) {
                            controller.email = v;
                          },
                          isnumber: false,
                          hintText: "enter your email",
                          label: "Email",
                          suffixIcon: Icons.email_outlined,
                          valid: (val) {
                            // return validinput(5, 40, 'email', val!);
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GetBuilder<LoginUsercontrollerImp>(
                          builder: (controller) => Costumlogin(
                            obscureText: controller.isShowpassword,
                            onChanged: (v) {
                              controller.password = v;
                            },
                            isnumber: false,
                            hintText: "Enter your password",
                            label: "password",
                            suffixIcon: Icons.password_outlined,
                            valid: (val) {
                              return validinput(5, 8, 'password', val!);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 38),
                          child: InkWell(
                            onTap: () {
                              controller.goToforgetpassword();
                            },
                            child: const Text(
                              "forget your password?",
                              style: TextStyle(color: Appcolor.primarycolor2),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 65,
                        ),
                        Costumbutoom(
                          text: "Login",
                          onPressed: () {
                            controller.login();
                          },
                        ),
                        const SizedBox(
                          height: 65,
                        ),
                        Costumsginuptext(
                          sginuptext: "Dont Have account? ",
                          sginuptext2: "SGIN UP",
                          onTap: () {
                            controller.goTosginup();
                          },
                        ),
                        Costumsginuptext(
                          sginuptext: "\n or sgin up with",
                          sginuptext2: "\n Google",
                          onTap: () {
                            controller.goTosginup();
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Costumsginuptext(
                          sginuptext: "login as a",
                          sginuptext2: " Doctor",
                          onTap: () {
                            Get.offAllNamed(Approutes.logindoctor);
                          },
                        )
                      ],
                    )),
              ),
            )));
  }
}
