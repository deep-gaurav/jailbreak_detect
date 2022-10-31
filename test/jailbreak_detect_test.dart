// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:jailbreak_detect/jailbreak_detect.dart';

// void main() {
//   const MethodChannel channel = MethodChannel('jailbreak_detect');

//   TestWidgetsFlutterBinding.ensureInitialized();

//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });

//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });

//   test('getPlatformVersion', () async {
//     expect(await JailbreakDetect.platformVersion, '42');
//   });
// }
