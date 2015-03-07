//
//  LoginEntry.h
//  Assignment 2
//
//  Created by John Chen on 3/4/15.
//  Copyright (c) 2015 John Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginEntry : NSObject
@property NSString *website;
@property NSString *username;
@property NSString *password;
@property int count;
-(void) incrementCount;
@end
