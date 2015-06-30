//
//  FEViewController.m
//  FEUserManager
//
//  Created by Jeff on 06/30/2015.
//  Copyright (c) 2014 Jeff. All rights reserved.
//

#import "FEViewController.h"
#import <FEUserManager.h>
#import "FEAppDelegate.h"

@interface FEViewController ()

@end

@implementation FEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnAction_login:(id)sender
{
    if (_txt_username.text.length == 0) {
        [_txt_username becomeFirstResponder];
        return;
    }
    
    if (_txt_password.text.length == 0) {
        [_txt_password becomeFirstResponder];
        return;
    }
    
    // cache
    id<FEUserModel> user = [FEUserManager createEmptyUser];
    [user setUserID:@"ID123"];
    [user setUsername:_txt_username.text];
    [user setPassword:_txt_password.text];
    [FEUserManager cacheUser:user];
    
    // segue to another view
    [FEAppDelegate changeRootToViewController:@"home" inStoryboard:nil];
}

@end
