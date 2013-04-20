//
//  XMAppDelegate.h
//  XMNote
//
//  Created by Bibo Yao on 13-4-13.
//  Copyright (c) 2013年 Bibo Yao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMViewController;

@interface XMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) XMViewController *viewController;

@end
