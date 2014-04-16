//
//  HockeyApp.m
//  CordovaLib
//
//  Created by Michael Bester on 4/14/14.
//
//

#import "HockeyApp.h"

@interface HockeyApp()
{
	// Init arguments
	NSString *APP_ID;
	bool CHECK_CRASHES;
	bool CHECK_UPDATES;
}
@end

@implementation HockeyApp

- (void) init:(CDVInvokedUrlCommand *)command
{
	NSLog(@"Args: %@", command.arguments);
}

- (void) getFeedback:(CDVInvokedUrlCommand *)command
{

}

@end
