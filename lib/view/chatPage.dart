import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/chatPageController.dart';
import 'package:untitled1/core/constant/color.dart';

class ChatsPage extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatPageController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
                Get.delete<ChatPageController>();
              },
            ),
            actions: [
              Container(
                child: Text(
                  controller.userName,
                  style: TextStyle(fontSize: 24),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
              ),
              CircleAvatar(
                  radius: 25,
                  backgroundImage: Image.network(controller.imageUrl).image),
            ],
            backgroundColor: Appcolor.primarycolor2,
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 595,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: controller.messages.isEmpty
                        ? [
                            Center(
                              child: Text('No data yet'),
                            )
                          ]
                        : List.generate(
                            controller.messages.length,
                            (i) => Row(
                                  mainAxisAlignment:
                                      controller.messages[i].senderid ==
                                              controller.currntUserId
                                          ? MainAxisAlignment.end
                                          : MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(10),
                                      width: 250,
                                      decoration: BoxDecoration(
                                          color:  Appcolor.primarycolor2,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child:
                                          Text('${controller.messages[i].text}',)
                                    ),
                                  ],
                                )),
                  ),
                ),
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Appcolor.primarycolor2,
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 7,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 12),
                          child: TextFormField(
                            // onChanged: onChanged,
                            // controller: searchcontroller,
                            controller: textEditingController,
                            decoration: InputDecoration(
                                prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.message_outlined,
                                      size: 25,
                                    )),
                                filled: true,
                                fillColor: Appcolor.primarycolor4,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25))),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () async {
                              if (textEditingController.text.isNotEmpty) {
                                textEditingController.clear();
                                controller.update();
                                await FirebaseFirestore.instance
                                    .collection('chates')
                                    .doc(controller.chatId)
                                    .collection('messeges')
                                    .add({
                                  'text': textEditingController.text,
                                  'senderId': controller.currntUserId
                                });
                              }
                            },
                            icon: Icon(
                              Icons.send_outlined,
                              color: Appcolor.primarycolor1,
                            )))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ChatPage extends StatefulWidget {
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   final _textController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Chat'),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.logout),
//               onPressed: () async {
//                 await FirebaseAuth.instance.signOut();
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         ),
//         body: Column(children: [
//           Expanded(
//               child: StreamBuilder<QuerySnapshot>(
//                   stream: FirebaseFirestore.instance
//                       .collection('messages')
//                       .orderBy('timestamp')
//                       .snapshots(),
//                   builder: (context, snapshot) {
//                     if (!snapshot.hasData) {
//                       return Center(child: CircularProgressIndicator());
//                     }
//                     final messages = snapshot.data?.docs.reversed;
//                     return ListView.builder(
//                       reverse: true,
//                       itemCount: messages?.length,

//                       itemBuilder: (BuildContext context, int index) {

//                       },
//                     );
//                   })),
//                   Container(height: 15,width: 15,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)), child:,)

//         ])
//         );
//   }
// }
