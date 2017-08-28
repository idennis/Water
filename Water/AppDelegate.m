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

@property (strong, nonatomic) NSStatusItem * statusItem;
@property (strong, nonatomic) WaterViewController * waterView;

@end



@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    self.statusItem = [bar statusItemWithLength:NSSquareStatusItemLength];
    
    NSStatusBarButton * button = self.statusItem.button;
    

    [button setEnabled:YES];
    [self.statusItem setHighlightMode:YES];
    [button setTarget:self];
    [button setImage:[NSImage imageNamed:@"StatusBarButtonImage"]];
    

    
    self.waterView = [[WaterViewController alloc] initWithNibName:@"WaterViewController" bundle:nil];
    
    [button setTarget:self.waterView];
    [button setAction:@selector(togglePopover:)];
}



- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
