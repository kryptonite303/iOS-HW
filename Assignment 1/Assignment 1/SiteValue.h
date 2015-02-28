//
//  SiteValue.h
//  Assignment 1
//
//  Created by John Chen on 2/18/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject

@property NSString *username;
@property NSString *password;
@property int count;

-(void)prettyPrint;
-(BOOL)addUsername: (NSString*) username
       addPassword: (NSString*) password
          addCount: (int) count;

-(void)incrementCount;
-(void)decrementCount;
-(void)setCount;
@end
