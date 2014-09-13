//
//  HFGAppDelegate.m
//  HackForGood
//
//  Created by Ahmet Karalar on 13/9/14.
//  Copyright (c) 2014 Ahmet Karalar. All rights reserved.
//

#import "HFGAppDelegate.h"
#import "HFGWebViewController.h"

@implementation HFGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    HFGWebViewController *controller = [[HFGWebViewController alloc] init];

    self.window.rootViewController = controller;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
