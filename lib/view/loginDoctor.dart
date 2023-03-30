import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/loginDoctorcontroller.dart';
import 'package:untitled1/controller/logincontroller.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/core/function/alertexitapp.dart';
import 'package:untitled1/core/function/validator.dart';
import 'package:untitled1/view/widgit/auth/costumsginuptext.dart';
import 'widgit/auth/costumbutoom.dart';
import 'widgit/auth/costumlogin.dart';
import 'widgit/auth/costumtitle.dart';

class LoginDoctor extends StatelessWidget {
  const LoginDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginDoctorcontrollerImp());

    return Scaffold(
        body: WillPopScope(
            onWillPop: alirtExitapp,
            child: GetBuilder<LoginDoctorcontrollerImp>(
              builder: (controller) => Container(
                padding: EdgeInsets.all(20),
                child: Form(
                    key: controller.formstateLogin,
                    child: ListView(
                      children: [
                        const Costumtitle(title: "Login Doctor"),
                        const SizedBox(
                          height: 200,
                        ),
                        Costumlogin(
                          isnumber: false,
                          hintText: "enter your email",
                          label: "email",
                          suffixIcon: Icons.email_outlined,
                          onChanged: (v) {
                            controller.email = v;
                          },
                          valid: (val) {
                            // return validinput(5, 40, 'email', val!);
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GetBuilder<LoginDoctorcontrollerImp>(
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
                        SizedBox(
                          height: 10,
                        ),
                        Costumsginuptext(
                          sginuptext: "login as a",
                          sginuptext2: " User",
                          onTap: () {
                            Get.offAllNamed(Approutes.loginuser);
                          },
                        )
                      ],
                    )),
              ),
            )));
  }
}
