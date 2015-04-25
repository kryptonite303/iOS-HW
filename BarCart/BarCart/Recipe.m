//
//  Recipe.m
//  Bar Cart
//
//  Created by John Chen on 4/12/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import "Recipe.h"

@implementation Recipe
-(void)decrementServingCount:(int)decrementBy {
    self.recipeServingCount -= decrementBy;
}
-(void)incrementServingCount:(int)incrementBy {
    self.recipeServingCount += incrementBy;
}

@end
