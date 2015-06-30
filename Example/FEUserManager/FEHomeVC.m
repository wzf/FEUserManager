//
//  FEHomeVC.m
//  FEUserManager
//
//  Created by wangzhanfeng-PC on 15/6/30.
//  Copyright (c) 2015年 Jeff. All rights reserved.
//

#import "FEHomeVC.h"
#import "FEAppDelegate.h"
#import <FEUserManager.h>

@implementation FEHomeVC

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSDateFormatter *dateFmt = [[NSDateFormatter alloc] init];
    [dateFmt setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    id<FEUserModel> user = [FEUserManager cachedUser];
    _descLabel.text = [NSString stringWithFormat:@"username:%@\npassword:%@\nupdateTime:%@",[user username],[user password],[dateFmt stringFromDate:[user updateDate]]];
}


- (IBAction)btnAction_quit:(id)sender
{
    [FEUserManager cleanCacheUser];
    
    [FEAppDelegate changeRootToViewController:@"login" inStoryboard:nil];
}
@end
