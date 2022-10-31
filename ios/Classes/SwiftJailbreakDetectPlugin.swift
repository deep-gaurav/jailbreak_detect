import Flutter
import UIKit

public class SwiftJailbreakDetectPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "jailbreak_detect", binaryMessenger: registrar.messenger())
    let instance = SwiftJailbreakDetectPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if call.method == "isRooted" {
          let isRooted = IOSSecuritySuite.amIJailbroken()
          result(isRooted)
      }
      else {
          result(FlutterError(code: "NOTDEFINED", message: nil, details: nil))
      }
  }
}
