//
//  AppDelegate.h
//  Assignment 3
//
//  Created by John Chen on 3/7/15.
//  Copyright (c) 2015 John Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSString *value;
@property (strong, nonatomic) NSString *correctSuitString;
@property (strong, nonatomic) NSString *correctValueString;
@property (strong, nonatomic) NSArray *suits;
@property (strong, nonatomic) NSArray *values;
@property int currentSuit;
@property int currentValue;
@property int *card;
@property int *selected;
@property int tries;
@end

