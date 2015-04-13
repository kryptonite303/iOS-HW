//
//  AppDelegate.h
//  Bar Cart
//
//  Created by John Chen on 4/12/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableArray *favoritesArray;
@property (strong, nonatomic) NSMutableArray *searchCategoryArray;
@property (strong, nonatomic) NSMutableArray *searchRecipeArray;
@property (strong, nonatomic) NSMutableArray *inventoryArray;

@end

