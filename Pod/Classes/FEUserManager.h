//
//  FEUserManager.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/6/30.
//
//

#import <Foundation/Foundation.h>
#import "FEUserModel.h"
#import "FEUser.h"

@interface FEUserManager : NSObject

@property (strong, nonatomic) NSMutableDictionary *attrsDictionary; //

// 实例化
+ (instancetype)sharedInstance;

// 路径
+ (NSString *)cachedDataPath;

// 创建一个空的id<FEUserModel>
+ (id<FEUserModel>)cacheUserWithID:(NSString *)userID
                          username:(NSString *)username
                          password:(NSString *)password
                          userInfo:(NSMutableDictionary *)userInfo;


// 创建一个空的id<FEUserModel>
+ (id<FEUserModel>)createEmptyUser;

// 缓存，user为nil，会删除本地的缓存
+ (void)cacheUser:(id<FEUserModel>)user;

// 更新当前缓存用户
+ (void)updateCachedUser;

// 缓存的用户信息，如果是nil，表示没有缓存信息
+ (id<FEUserModel>)cachedUser;

// 清除本地缓存
+ (void)cleanCacheUser;



@end
