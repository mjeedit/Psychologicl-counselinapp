// import 'package:app1/core/class/statusrequest.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class HandlingDataView extends StatelessWidget {
//   final StatusRequest statusRequest;
//   final Widget widget;
//   const HandlingDataView({super.key, required this.statusRequest, required this.widget, StatusRequest? StatusRequest});

//   @override
//   Widget build(BuildContext context) {
//     return statusRequest == StatusRequest.loading ?
//       const Center(child: Text("loadng")):statusRequest == StatusRequest.offlinefailure?
//       const Center(child: Text("offlinefailure")):statusRequest == StatusRequest.serverfailure?
//        const Center(child: Text("serverfailure")):statusRequest == StatusRequest.failure?
//         const Center(child: Text("No Data")):widget;
//   }
// }

// class HandlingRequestView extends StatelessWidget {
//   final StatusRequest statusRequest;
//   final Widget widget;
//   const HandlingRequestView({super.key, required this.statusRequest, required this.widget, StatusRequest? StatusRequest});

//   @override
//   Widget build(BuildContext context) {
//     return statusRequest == StatusRequest.loading ?
//       const Center(child: Text("loadng")):statusRequest == StatusRequest.offlinefailure?
//       const Center(child: Text("offlinefailure")):statusRequest == StatusRequest.serverfailure?
//        const Center(child: Text("serverfailure")):widget;
//   }
// }