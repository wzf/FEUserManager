//
//  FEUser.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/6/30.
//
//

#import <Foundation/Foundation.h>
#import "FEUserModel.h"

@interface FEUser : NSObject<FEUserModel>

@property (copy,   nonatomic) NSString *userID; //
@property (copy,   nonatomic) NSString *username; //
@property (copy,   nonatomic) NSString *password; //
@property (strong, nonatomic) NSDate   *updateDate; //
@property (strong, nonatomic) NSMutableDictionary *userInfo; //

@end
