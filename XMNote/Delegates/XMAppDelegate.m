//
//  XMAppDelegate.m
//  XMNote
//
//  Created by Bibo Yao on 13-4-13.
//  Copyright (c) 2013年 Bibo Yao. All rights reserved.
//

#import "XMAppDelegate.h"
#import "XMViewController.h"

@implementation XMAppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
   
    self.viewController = [[[XMViewController alloc] init] autorelease];
    UINavigationController *navController = [self customControllerWithRootViewController:_viewController];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (id)customControllerWithRootViewController:(UIViewController *)root
{
    UINavigationController *navController = [[[NSBundle mainBundle] loadNibNamed:@"NavigationController" owner:self options:nil] objectAtIndex:0];
    [navController setViewControllers:[NSArray arrayWithObject:root]];
    return navController;
}

@end
