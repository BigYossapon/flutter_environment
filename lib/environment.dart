import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  // static String get fileName =>
  // kProfileMode ? ".env.production" : ".env.development";

  static const String debugMode =
      String.fromEnvironment('DebugMode', defaultValue: '');

  static String get fileName {
    if (kReleaseMode) {
      return "lib/constans/environments/.env.production";
    } else if (kProfileMode) {
      return "lib/constans/environments/.env.profile";
    }
    //debug mode
    //demo
    if (Environment.debugMode.startsWith('demo')) {
      return "lib/constans/environments/.env.demo";
      //deve
    } else if (Environment.debugMode.startsWith('dev')) {
      return "lib/constans/environments/.env.development";
    } else {
      return "lib/constans/environments/.env.development";
    }
  }

  //ตัวแปลที่ต้องการจะเรียกจาก ไฟล์  env. อื่นๆ
  static String get apiUrl => dotenv.env['API_URL'] ?? 'MY_FALLBACK';
}
//android 
//1.press near I> select configuration
//2.add args in addition arguments 

//3. set entry point like main.dart path
//4.apply and ok and set name

//  - lib/constans/environments/.env.demo
//vs code configuration
//1.press run and debug left tab
//2.select top near I> select add configuration below code 
//  "--dart-define=WEB_URL=https://demoworkpermit.onlineasset.co.th"
//3.copy code and press on this page

// {
//     // Use IntelliSense to learn about possible attributes.
//     // Hover to view descriptions of existing attributes.
//     // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
//     "version": "0.2.0",
//     "configurations": [
        
//         {
//             "name": "mol-ewp-flutter-mobile-app (dev mode)",
//             "request": "launch",
//             "type": "dart",
//             "toolArgs": [
//                 "--dart-define=WEB_URL=https://deveworkpermit.onlineasset.co.th"
//             ],
//             "flutterMode": "debug"
//         },
//         {
//             "name": "mol-ewp-flutter-mobile-app (demo mode)",
//             "request": "launch",
//             "type": "dart",
//             "toolArgs": [
//                 "--dart-define=WEB_URL=https://demoworkpermit.onlineasset.co.th"
//             ],
//             "flutterMode": "debug"
//         },
//         {
//             "name": "mol-ewp-flutter-mobile-app (product mode)",
//             "request": "launch",
//             "type": "dart",
//             "toolArgs": [
//                 "--dart-define=WEB_URL=prod"
//             ],
//             "flutterMode": "release"
//         },
//     ]
// }