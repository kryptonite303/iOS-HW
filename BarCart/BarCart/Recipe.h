//
//  Recipe.h
//  Bar Cart
//
//  Created by John Chen on 4/12/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (strong, nonatomic) NSString *recipeName;
@property (strong, nonatomic) NSString *recipeSubname;
@property (strong, nonatomic) NSString *notes;
@property (strong, nonatomic) NSString *instructions;
@property (strong, nonatomic) NSArray *drinkList;

// How many servings you want to make, which can be adjusted
@property int recipeServingCount;
@property int ratingStars;
@property int usageCount;

-(void) incrementServingCount: (int) incrementBy;
-(void) decrementServingCount: (int) decrementBy;
@end
