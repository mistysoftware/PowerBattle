//
//  DocumentController.m
//  PowerBattle
//
//  Created by Keith Malkin on 1/4/24.
//  Copyright © 2024 Misty Software, LLP. All rights reserved.
//

#import "DocumentController.h"

@interface NSDocumentController (MissingAndMassagedPrototypes)
//- (void)beginOpenPanel:(NSOpenPanel *)openPanel forTypes:(nullable NSArray<NSString *> *)inTypes completionHandler:(void (^)(NSInteger result))completionHandler API_AVAILABLE(macos(10.8));
- (void)beginOpenPanel:(NSOpenPanel *)openPanel forTypes:(NSArray *)inTypes completionHandler:(void *)completionHandler;
@end

@implementation DocumentController

- (void)dealoc {
	[mOpenPanel release];
}

- (IBAction)openDocument:(id)sender {
	if ([mOpenPanel isVisible]) {
		[mOpenPanel makeKeyAndOrderFront:nil];
	}
	else {
		[super openDocument:sender];
	}
}

- (void)beginOpenPanel:(NSOpenPanel *)openPanel forTypes:(NSArray *)inTypes completionHandler:(void *)completionHandler {
	[super beginOpenPanel:openPanel forTypes:inTypes completionHandler:completionHandler];
	[openPanel retain];
	[mOpenPanel release];
	mOpenPanel = openPanel;
}

// override -fileNamesFromRunningOpenPanel so that NSDocumentController provides legacy modal open panel
//- (NSArray *)fileNamesFromRunningOpenPanel {
//	return [super fileNamesFromRunningOpenPanel];
//}

@end
