//
//  SiteValue.m
//  Assignment 1
//
//  Created by John Chen on 2/18/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue
-(void)prettyPrint {
    NSLog(@"\nUsername: %@\nPassword: %@\nCount: %i", _username, _password, _count);
}
-(void)incrementCount {
    _count++;
}
-(void)decrementCount {
    _count--;
}
-(BOOL)addUsername:(NSString *)username
       addPassword:(NSString *)password
          addCount:(int)count {
        _username = username;
        _password = password;
        _count = count;
        return true;
    
}
-(void)setCount {
    _count = 0;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
@end
