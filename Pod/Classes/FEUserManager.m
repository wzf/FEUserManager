//
//  FEUserManager.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/6/30.
//
//

#import "FEUserManager.h"

@implementation FEUserManager

// 实例化
+ (instancetype)sharedInstance;
{
    static dispatch_once_t onceToken;
    static FEUserManager *sharedObject = nil;
    dispatch_once(&onceToken, ^{
        if (sharedObject == nil) {
            sharedObject = [[FEUserManager alloc] init];
            sharedObject.attrsDictionary = [NSMutableDictionary dictionary];
        }
    });
    return sharedObject;
}

// 路径
+ (NSString *)cachedDataPath;
{
    NSString *libDirectory = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES)[0];
    return [libDirectory stringByAppendingPathComponent:@"__CACHED__USER__"];
}

// 创建一个空的id<FEUserModel>
+ (id<FEUserModel>)cacheUserWithID:(NSString *)userID username:(NSString *)username password:(NSString *)password userInfo:(NSMutableDictionary *)userInfo;
{
    id<FEUserModel> user = [self createEmptyUser];
    [user setUserID:userID];
    [user setUsername:username];
    [user setPassword:password];
    [user setUserInfo:userInfo];
    [user setUpdateDate:[NSDate date]];
    
    [self cacheUser:user];
    
    return user;
}

// 创建一个空的id<FEUserModel>
+ (id<FEUserModel>)createEmptyUser;
{
    FEUser *user = [[FEUser alloc] init];
    return user;
}

// 缓存，user为nil，会删除本地的缓存
+ (void)cacheUser:(id<FEUserModel>)user;
{
    NSFileManager *fileMng  = [NSFileManager defaultManager];
    NSString      *filePath = [self cachedDataPath];
    
    // 清除数据
    if ([fileMng fileExistsAtPath:filePath isDirectory:NULL]) {
        [fileMng removeItemAtPath:filePath error:NULL];
    }
    
    // 缓存数据
    if (user != nil) {
        [user setUpdateDate:[NSDate date]];
        [NSKeyedArchiver archiveRootObject:user toFile:filePath];
    }
}

+ (void)updateCachedUser;
{
    id<FEUserModel> user = [self cachedUser];
    if (user) {
        [user setUpdateDate:[NSDate date]];
    }
    [self cacheUser:user];
}

// 缓存的用户信息，如果是nil，表示没有缓存信息
+ (id<FEUserModel>)cachedUser;
{
    NSFileManager *fileMng  = [NSFileManager defaultManager];
    NSString      *filePath = [self cachedDataPath];
    if ([fileMng fileExistsAtPath:filePath]) {
        return [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    }
    return nil;
}

// 清除本地缓存
+ (void)cleanCacheUser;
{
    [self cacheUser:nil];
}

@end
