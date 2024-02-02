//
//  AppDelegate.m
//  PowerBattle
//
//  Created by Keith Malkin on 2/1/24.
//  Copyright © 2024 Misty Software, LLP. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


- (IBAction)showSource:(id)sender {
	[[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString: @"https://github.com/mistysoftware/PowerBattle/"]];
}


@end
