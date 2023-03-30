import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constant/color.dart';
import 'package:untitled1/view/widgit/custom/customAppar.dart';

class HomePageDoctor extends StatelessWidget {
  const HomePageDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
    Container(          
child: 
    Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, top: 33),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor2,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                    
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor:Appcolor.primarycolor1,
                      radius: 25,
                    ),
                  )),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Text(
                  "2".tr,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Appcolor.primarycolor2),
                ),
              )
            ],
          ),
        ),
        CustomAppar(
          onPressedNotifcation: () {},
          onPressedSearch: () {},hintText: "3".tr,
        ),
    //  Container(height: 20, padding: EdgeInsets.symmetric(horizontal: 5), child: Text("Active doctor",style: TextStyle(fontSize: 20,color: Appcolor.primarycolor1,fontWeight: FontWeight.bold),),),
     Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      
  height: 110,
child: ListView(
          scrollDirection: Axis.horizontal
          ,children: [

            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child:Column(
                  children: [
                Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                  )),
                    Text("doctor1")
                ],),),

                Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child:Column(
                  children: [
                Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                  )),
                    Text("doctor1")
                ],),),
                Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child:Column(
                  children: [
                Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                  )),
                    Text("doctor1")
                ],),),


          //       Container(
          //     padding: EdgeInsets.symmetric(horizontal: 5),
          //     child:Column(
          //         children: [
          //       Positioned(
          //             child: Container(
          //           padding: EdgeInsets.all(3),
          //           decoration: BoxDecoration(
          //               color: Appcolor.primarycolor1,
          //               borderRadius: BorderRadius.circular(100)),
          //           child: CircleAvatar(
          //             backgroundColor: Colors.white,
          //             radius: 25,
          //           ),
          //         )),
          //           Text("doctor1")
          //       ],),),


          //       Container(
          //     padding: EdgeInsets.symmetric(horizontal: 5),
          //     child:Column(
          //         children: [
          //       Positioned(
          //             child: Container(
          //           padding: EdgeInsets.all(3),
          //           decoration: BoxDecoration(
          //               color: Appcolor.primarycolor1,
          //               borderRadius: BorderRadius.circular(100)),
          //           child: CircleAvatar(
          //             backgroundColor: Colors.white,
          //             radius: 25,
          //           ),
          //         )),
          //           Text("doctor1")
          //       ],),),


          //       Container(
          //     padding: EdgeInsets.symmetric(horizontal: 5),
          //     child:Column(
          //         children: [
          //       Positioned(
          //             child: Container(
          //           padding: EdgeInsets.all(3),
          //           decoration: BoxDecoration(
          //               color: Appcolor.primarycolor1,
          //               borderRadius: BorderRadius.circular(100)),
          //           child: CircleAvatar(
          //             backgroundColor: Colors.white,
          //             radius: 25,
          //           ),
          //         )),
          //           Text("doctor1")
          //       ],),),
                
          // ],) ,),  

          // Container(height: 5,margin: EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(color: Appcolor.primarycolor2,borderRadius: BorderRadius.circular(30)),),
       


            ListView(shrinkWrap: true,scrollDirection: Axis.vertical,children: [
              InkWell(
            
            onTap: (){},
            child:    Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.topLeft,
            child: 
           Row(
            mainAxisSize: MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.start ,
            children: [
                  Expanded(child:Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                    ),
                  )),),
                 Expanded(child: ListTile(title: Text("Dr.sadan Alwardy"),subtitle: Text("hello mjeed what wrong with you?"),trailing: Text(".mar13"),))

            ],)
            ),),

SizedBox(height: 5,),

             InkWell(
            
            onTap: (){},
            child:    Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.topLeft,
            child: 
           Row(
            mainAxisSize: MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.start ,
            children: [
                  Expanded(child:Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                    ),
                  )),),
                 Expanded(child: ListTile(title: Text("Dr.sadan Alwardy"),subtitle: Text("hello mjeed what wrong with you?"),trailing: Text(".mar13"),))

            ],)
            ),),



            SizedBox(height: 5,),

             InkWell(
            
            onTap: (){},
            child:    Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.topLeft,
            child: 
           Row(
            mainAxisSize: MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.start ,
            children: [
                  Expanded(child:Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                    ),
                  )),),
                 Expanded(child: ListTile(title: Text("Dr.sadan Alwardy"),subtitle: Text("hello mjeed what wrong with you?"),trailing: Text(".mar13"),))

            ],)
            ),),


            SizedBox(height: 5,),

             InkWell(
            
            onTap: (){},
            child:    Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.topLeft,
            child: 
           Row(
            mainAxisSize: MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.start ,
            children: [
                  Expanded(child:Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                    ),
                  )),),
                 Expanded(child: ListTile(title: Text("Dr.sadan Alwardy"),subtitle: Text("hello mjeed what wrong with you?"),trailing: Text(".mar13"),))

            ],)
            ),),



            SizedBox(height: 5,),

             InkWell(
            
            onTap: (){},
            child:    Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.topLeft,
            child: 
           Row(
            mainAxisSize: MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.start ,
            children: [
                  Expanded(child:Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                    ),
                  )),),
                 Expanded(child: ListTile(title: Text("Dr.sadan Alwardy"),subtitle: Text("hello mjeed what wrong with you?"),trailing: Text(".mar13"),))

            ],)
            ),),


            SizedBox(height: 5,),

             InkWell(
            
            onTap: (){},
            child:    Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.topLeft,
            child: 
           Row(
            mainAxisSize: MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.start ,
            children: [
                  Expanded(child:Positioned(
                      child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Appcolor.primarycolor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                    ),
                  )),),
                 Expanded(child: ListTile(title: Text("Dr.sadan Alwardy"),subtitle: Text("hello mjeed what wrong with you?"),trailing: Text(".mar13"),))

            ],)
            ),),


   


         
            





            ],),


           



          











          // Container(
            
          //   child: 
          //        Expanded(child:Row(mainAxisSize: MainAxisSize.max, children: [
          //                    Positioned(
          //             child: Container(
          //           padding: EdgeInsets.all(3),
          //           decoration: BoxDecoration(
          //               color: Appcolor.primarycolor1,
          //               borderRadius: BorderRadius.circular(100)),
          //           child: CircleAvatar(
          //             backgroundColor: Colors.white,
          //             radius: 25,
          //           ),
          //         )), 
          //             ListTile(title: Text("mjeedit"),subtitle: Text("ineed help doctor"),)
          //         ],),),



          // )
        
        
      ],
    ))])));
  }
}
