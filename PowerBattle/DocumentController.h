//
//  DocumentController.h
//  PowerBattle
//
//  Created by Keith Malkin on 1/4/24.
//  Copyright © 2024 Misty Software, LLP. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DocumentController : NSDocumentController {
	NSOpenPanel *mOpenPanel;	// instance variable is declared in the interface for compatibility with Xcode 3.1.4
}
@end
