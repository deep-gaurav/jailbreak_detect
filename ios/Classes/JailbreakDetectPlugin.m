#import "JailbreakDetectPlugin.h"
#if __has_include(<jailbreak_detect/jailbreak_detect-Swift.h>)
#import <jailbreak_detect/jailbreak_detect-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "jailbreak_detect-Swift.h"
#endif

@implementation JailbreakDetectPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJailbreakDetectPlugin registerWithRegistrar:registrar];
}
@end
