import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:untitled1/data/model/chats.dart';
import 'package:untitled1/data/model/user.dart';

abstract class HomepageController extends GetxController {

}

class HomepageControllerImp extends HomepageController {
  late User curntuser = User(id: '', name: '', iimageurld: '');
  late List<Chat> chats = [];

  void getChates() {
    FirebaseFirestore.instance
        .collection('users')
        .doc(curntuser.id)
        .collection('chatesId')
        .get()
        .then((value) {
      value.docs.forEach((element) {
        chats.add(Chat(
            id: element.data()['chatId'],
            imageUrl: element.data()['imageUrl'],
            senderId: element.id,
            SenderName: element.data()['userName'],
            lastMessage: element.data()['lastMesseges'],
            time: DateTime.parse(element.data()['time'])));
        update();
      });
    });
  }

}
