//
//  HockeyAppPlugin.m
//  CordovaLib
//
//  Created by Michael Bester on 4/14/14.
//
//

#import "HockeyAppPlugin.h"

@interface HockeyAppPlugin()
{
	// match specifics
	NSString *APP_ID;
	bool CHECK_CRASHES;
	bool CHECK_UPDATES;
}

@end
@implementation HockeyAppPlugin

- (void) init:(CDVInvokedUrlCommand *)command
{
	NSLog(@"Args: %@", command.arguments);
}

- (void) getFeedback:(CDVInvokedUrlCommand *)command
{

}

@end
