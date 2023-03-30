import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/chatPageController.dart';
import 'package:untitled1/controller/homepageController.dart';
import 'package:untitled1/core/constant/approutes.dart';
import 'package:untitled1/data/model/user.dart';

class SearchPageController extends GetxController {
  List<User> users = [];

  @override
  onInit() {
    try {
      FirebaseFirestore.instance
          .collection('users')
          .where('isDotor', isEqualTo: true)
          .get()
          .then((value) {
        value.docs.forEach((element) {
          users.add(User(
              id: element.id,
              name: element.data()['userName'],
              iimageurld: element.data()['imageUrl']));
        });
      });
    } catch (e) {
      print(e);
    }
  }

  void toChatPage(int index) async {
    ChatPageController c = Get.put(ChatPageController());
    c.imageUrl = users[index].iimageurld;
    c.userName = users[index].name;
    c.currntUserId = (Get.put(HomepageControllerImp()).curntuser.id);
    Get.toNamed(Approutes.chatspage);
    DocumentSnapshot x = await FirebaseFirestore.instance
        .collection('users')
        .doc(Get.put(HomepageControllerImp()).curntuser.id)
        .collection('chatesId')
        .doc(users[index].id)
        .get();
    if(x.exists){

    }
    else{
      
    }
  }
}
