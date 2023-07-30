import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  // static String get fileName =>
  // kProfileMode ? ".env.production" : ".env.development";

  static String get fileName {
    if (kReleaseMode) {
      return "lib/config/.env.production";
    } else if (kProfileMode) {
      return "lib/config/.env.profile";
    }
    return "lib/config/.env.development";
  }

  //ตัวแปลที่ต้องการจะเรียกจาก ไฟล์  env. อื่นๆ
  static String get apiUrl => dotenv.env['API_URL'] ?? 'MY_FALLBACK';
}
