// ./ios/ReactBridge/RCTHelloWorld.m
#import "RCTHelloWorld.h"
#import "Greeting.hpp"

@implementation RCTHelloWorld

RCT_EXPORT_MODULE();

RCT_REMAP_METHOD(sayHello,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
//  resolve(@"Hello from Objective-C");
  Greeting greeting;
  std::string greetingText = greeting.sayGreeting();
  resolve([NSString
           stringWithCString:greetingText.c_str()
           encoding:NSUTF8StringEncoding]);
}

@end
