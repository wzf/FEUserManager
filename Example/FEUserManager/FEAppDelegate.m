//
//  FEAppDelegate.m
//  FEUserManager
//
//  Created by CocoaPods on 06/30/2015.
//  Copyright (c) 2014 Jeff. All rights reserved.
//

#import "FEAppDelegate.h"
#import <FEUserManager.h>

@implementation FEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    if ([FEUserManager cachedUser]) {
        [FEUserManager updateCachedUser];
        UIStoryboard *mainBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        self.window.rootViewController = [mainBoard instantiateViewControllerWithIdentifier:@"home"];
    }
    
    return YES;
}

+ (void)changeRootToViewController:(NSString *)identifier inStoryboard:(UIStoryboard *)sb;
{
    FEAppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIStoryboard *mainBoard = sb;
    if (sb == nil) {
        mainBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    }
    
    UIViewController *targetViewController = [mainBoard instantiateViewControllerWithIdentifier:identifier];
    if (targetViewController) {
        delegate.window.rootViewController = targetViewController;
    }
}
@end
