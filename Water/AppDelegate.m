//
//  AppDelegate.m
//  Water
//
//  Created by dennishou on 28/8/17.
//  Copyright © 2017 dennishou. All rights reserved.
//

#import "AppDelegate.h"
#import "WaterViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    
    _statusItem = [bar statusItemWithLength:NSSquareStatusItemLength];
    

    if (_statusItem.button != NULL){
        [_statusItem setEnabled:YES];
        [_statusItem setHighlightMode:YES];
        [_statusItem setTarget:self];
        [_statusItem setImage:[NSImage imageNamed:@"StatusBarButtonImage"]];
        [_statusItem setAction:@selector(togglePopover:)];
        
    };
    
    _popover.contentViewController = [[WaterViewController init ]freshController];
}

- (void)printQuote:(id)sender{
    _quoteText = @"teeststs";
    _quoteAuthor = @"fake author";
    NSLog(@"%@", _quoteText);
}



- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void) constructMenu{
    NSMenu *menu = [NSMenu alloc];
    [menu addItemWithTitle:@"Print" action:@selector(printQuote:) keyEquivalent:@"P"];
    [menu addItem:[NSMenuItem separatorItem]];
    [menu addItemWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"];
    
    _statusItem.menu = menu;
}


@end
