import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkInternet() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    return false;
  } else {
    return true;
  }
}

// bool internetAvailable = await checkInternet();
// if (internetAvailable) {
//   // internet is available
// } else {
//   // internet is not available
// }