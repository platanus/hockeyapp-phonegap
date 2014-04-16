//
//  HockeyApp.h
//  CordovaLib
//
//  Created by Michael Bester on 4/14/14.
//
//

#import <Cordova/CDV.h>

@interface HockeyApp : CDVPlugin

- (void) init:(CDVInvokedUrlCommand *)command;
- (void) getFeedback:(CDVInvokedUrlCommand *)command;

@end
