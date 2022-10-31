import 'dart:async';

import 'package:flutter/services.dart';

class JailbreakDetect {
  static const MethodChannel _channel = MethodChannel('jailbreak_detect');

  static Future<bool?> get isRooted async {
    final bool? isRooted = await _channel.invokeMethod('isRooted');
    return isRooted;
  }
}
