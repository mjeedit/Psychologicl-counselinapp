import 'package:get/get.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/middleware/mymiddleware.dart';
import 'package:untitled1/view/chatPage.dart';
import 'package:untitled1/view/homePage.dart';
import 'package:untitled1/view/homeScreen.dart';
import 'package:untitled1/view/homescreendoctor.dart';
import 'package:untitled1/view/lang.dart';
import 'package:untitled1/view/loginDoctor.dart';
import 'package:untitled1/view/loginUser.dart';
import 'package:untitled1/view/onboarding.dart';
import 'package:untitled1/view/searchPage.dart';
import 'package:untitled1/view/settingPage.dart';
import 'package:untitled1/view/sginupDoctor.dart';
import 'package:untitled1/view/sginupUser.dart';
import 'package:untitled1/view/widgit/custom/CustomAboutus.dart';

List<GetPage<dynamic>>? route = [
    GetPage(name: "/", page: ()=>const Onboarding(),middlewares:[ Mymiddleware()]),
  GetPage(name: "/", page: () => const LoginUser()),
  GetPage(name: Approutes.homescreen, page: () => const HomeScreen()),
  GetPage(name: Approutes.homepage, page: () => HomePage()),
  GetPage(name: Approutes.logindoctor, page: () => const LoginDoctor()),
  GetPage(name: Approutes.loginuser, page: () => const LoginUser()),
  GetPage(name: Approutes.sginupuser, page: () => const SignupUser()),
  GetPage(name: Approutes.sginupdoctor, page: () => const SignupDoctor()),
  GetPage(name: Approutes.setting, page: () => const SettingPage()),
  GetPage(name: Approutes.lang, page: () => const Lang()),
  GetPage(
      name: Approutes.homescreenDoctor, page: () => const HomeScreenDoctor()),
  GetPage(name: Approutes.chatspage, page: () => ChatsPage()),
  GetPage(name: Approutes.searchPage, page: () => SearchPage()),
  GetPage(name: Approutes.aboutus, page: () => Aboutus()),




];

// Map<String, Widget Function(BuildContext)> routes = {
//   Approutes.login: (context) => const Login(),
//   Approutes.Signup: (context) => const Signup(),
//   Approutes.forgetpassword: (context) => const Forgetpassword(),
//   Approutes.verifyemail: (context) => const Verifyemail(),
//   Approutes.resetpassword: (context) => const Resetpassword(),
//   Approutes.sucessResetPassword: (context) => const SuccessResetpassword(),
//   Approutes.successSignup: (context) => const SuccessSignup(),
//   Approutes.verifyingcodesignup: (context) => const Verifycodesignup(),
//   Approutes.verifycode: (context) => const Verifycode(),
// };
