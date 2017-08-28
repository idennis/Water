//
//  WaterViewController.m
//  Water
//
//  Created by dennishou on 28/8/17.
//  Copyright © 2017 dennishou. All rights reserved.
//

#import "WaterViewController.h"

@interface WaterViewController ()

@property (strong, nonatomic) NSPopover *popover;

@end



@implementation WaterViewController


- (void)togglePopover:(id)sender{
    if (self.popover.shown){
        NSLog(@"close because its open");
        [self closePopover];
    }
    else {
        NSLog(@"open because its closed");
        [self showPopover:sender];
    }
    
}


- (void)showPopover:(id)sender{
    NSRect aRect = [sender bounds];
    [self.popover showRelativeToRect:aRect ofView:sender preferredEdge:NSMinYEdge];
}

- (void)closePopover{
    [self.popover performClose:self];
}


- (NSPopover*) popover
{
    if( _popover == nil ) {
        _popover = [[NSPopover alloc] init];
        _popover.contentViewController = self;
        _popover.behavior = NSPopoverBehaviorTransient;
        _popover.animates = NO;
    }
    return _popover;
}




@end
