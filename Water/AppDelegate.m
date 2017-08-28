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
    
    NSStatusBarButton * button = _statusItem.button;
    
    if (button != NULL){
        [button setEnabled:YES];
        [_statusItem setHighlightMode:YES];
        [button setTarget:self];
        [button setImage:[NSImage imageNamed:@"StatusBarButtonImage"]];
        [button setAction:@selector(togglePopover:)];
        
    };
    
    _popover.contentViewController = [[[WaterViewController alloc] init ]freshController];
    
//    [self constructMenu];
}

- (void)printQuote:(id)sender{
    _quoteText = @"teeststs";
    _quoteAuthor = @"fake author";
    NSLog(@"%@", _quoteText);
}


- (void)togglePopover:(id)sender{
//    if (_popover .isShown){
//        [closePopover sender];
//    }
//    else {
//        [showPopover sender];
//    }
    
}


- (void)showPopover:(id)sender{

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
