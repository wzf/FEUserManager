//
//  FEAppDelegate.h
//  FEUserManager
//
//  Created by CocoaPods on 06/30/2015.
//  Copyright (c) 2014 Jeff. All rights reserved.
//

@import UIKit;

@interface FEAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (void)changeRootToViewController:(NSString *)identifier inStoryboard:(UIStoryboard *)sb;

@end
