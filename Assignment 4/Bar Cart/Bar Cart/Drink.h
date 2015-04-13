//
//  Drink.h
//  Bar Cart
//
//  Created by John Chen on 4/12/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drink : NSObject

@property (strong, nonatomic) NSString *drinkName;
@property (strong, nonatomic) NSString *drinkSubname;
@property (strong, nonatomic) NSString *notes;
@property int inventoryCount;
@property int servingCount;
@property int recipeServingCount;
@property int ratingStars;
@property int usageCount;

-(void) incrementInventoryCount: (int) incrementBy;
-(void) decrementInventoryCount: (int) decrementBy;

@end
