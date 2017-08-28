//
//  AppDelegate.h
//  Water
//
//  Created by dennishou on 28/8/17.
//  Copyright © 2017 dennishou. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong) NSStatusItem * statusItem;
@property (strong) NSPopover *popover;

@property NSString *quoteText;
@property NSString *quoteAuthor;

- (void) printQuote:(id)sender;
- (void) constructMenu;

@end

