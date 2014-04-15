//
//  HockeyAppPlugin.h
//  CordovaLib
//
//  Created by Michael Bester on 4/14/14.
//
//

#import <Cordova/Cordova.h>
#import <HockeySDK/HockeySDK.h>

@interface HockeyAppPlugin : CDVPlugin

- (void) init(CDVInvokedUrlCommand *)command;
- (void) getFeedback(CDVInvokedUrlCommand *)command;

@end
