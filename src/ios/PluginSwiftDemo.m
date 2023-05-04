`/********* PluginSwiftDemo.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>


@objc(PluginSwiftDemo) class PluginSwiftDemo : CDVPlugin {
  @objc(coolMethod:)
  func coolMethod(_ command: CDVInvokedUrlCommand) {
    
    let msg = command.arguments[0] as? String ?? "Error"
    print(msg)
   var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR,
      messageAs: msg
    )
if msg.count > 0 {
      pluginResult = CDVPluginResult(
        status: CDVCommandStatus_OK,
        messageAs: msg
      )
    }
self.commandDelegate!.send(
      pluginResult,
      callbackId: command.callbackId
    ) 
  }
@end
