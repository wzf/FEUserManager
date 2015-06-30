//
//  FEUser.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/6/30.
//
//

#import "FEUser.h"

@implementation FEUser

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.userInfo = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.userID     forKey:@"userID"];
    [aCoder encodeObject:self.username   forKey:@"username"];
    [aCoder encodeObject:self.password   forKey:@"password"];
    [aCoder encodeObject:self.userInfo   forKey:@"userInfo"];
    [aCoder encodeObject:self.updateDate forKey:@"updateDate"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        self.userID     = [aDecoder decodeObjectForKey:@"userID"];
        self.username   = [aDecoder decodeObjectForKey:@"username"];
        self.password   = [aDecoder decodeObjectForKey:@"password"];
        self.userInfo   = [aDecoder decodeObjectForKey:@"userInfo"];
        self.updateDate = [aDecoder decodeObjectForKey:@"updateDate"];
    }
    return self;
}

@end
