//
//  HockeyApp.m
//  CordovaLib
//
//  Created by Michael Bester on 4/14/14.
//
//

#import "HockeyApp.h"
#import <HockeySDK/HockeySDK.h>

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
	CDVPluginResult *pluginResult;
	bool initialized;
	// Check the arguments passed in
	switch ([command.arguments count])
	{
		case 1:
			APP_ID = [command.arguments objectAtIndex:0];
			CHECK_CRASHES = false;
			CHECK_UPDATES = false;
			initialized = true;
			break;
		case 2:
			APP_ID = [command.arguments objectAtIndex:0];
			CHECK_CRASHES = [command.arguments objectAtIndex:1];
			CHECK_UPDATES = false;
			initialized = true;
			break;
		case 3:
			APP_ID = [command.arguments objectAtIndex:0];
			CHECK_CRASHES = [command.arguments objectAtIndex:1];
			CHECK_UPDATES = [command.arguments objectAtIndex:2];
			initialized = true;
			break;
		default:
			initialized = false;
			break;
	}

	if ( initialized ) {
		NSLog(@"Initializing HockeyApp with the following arguments:");
		NSLog(@"App ID: %@", APP_ID);
		NSLog(@"Check Crashes: %d", CHECK_CRASHES);
		NSLog(@"Check Updates: %d", CHECK_UPDATES);

		[[BITHockeyManager sharedHockeyManager] configureWithIdentifier:APP_ID];
		[[BITHockeyManager sharedHockeyManager] startManager];
		[[BITHockeyManager sharedHockeyManager].authenticator authenticateInstallation];

		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
	} else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
	}

	[self.commandDelegate sendPluginResult: pluginResult callbackId:command.callbackId];

}

- (void) getFeedback:(CDVInvokedUrlCommand *)command
{

}

@end
