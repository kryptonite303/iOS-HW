//
//  Drink.m
//  Bar Cart
//
//  Created by John Chen on 4/12/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import "Drink.h"

@implementation Drink
-(void) incrementInventoryCount:(int)incrementBy {
    self.inventoryCount += incrementBy;
}
-(void) decrementInventoryCount:(int)decrementBy {
    self.inventoryCount -= decrementBy;
}

@end
