//
//  WaterViewController.m
//  Water
//
//  Created by dennishou on 28/8/17.
//  Copyright © 2017 dennishou. All rights reserved.
//

#import "WaterViewController.h"

@interface WaterViewController ()

@end

@implementation WaterViewController

- (NSViewController *) freshController{
    NSStoryboard * storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
    NSString * identifier = @"WaterViewController";
    
    NSViewController * viewcontroller = [storyboard instantiateControllerWithIdentifier:identifier];
    
    return viewcontroller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}




@end
