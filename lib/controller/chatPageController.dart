import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:untitled1/data/model/mesage.dart';

class ChatPageController extends GetxController {
  List<Message> messages=[];
  late String currntUserId;
  late String imageUrl;
  late String userName;
  late String chatId;

  void getMesseges() {
    messages = [];
    FirebaseFirestore.instance
        .collection('chates')
        .doc(chatId)
        .collection('messeges')
        .get()
        .then((value) {
      value.docs.forEach((element) {
        messages.add(Message(
            senderid: element.data()['id'],
            text: element.data()['text']));
        update();
        print('ok');
      });
    });
  }
}
