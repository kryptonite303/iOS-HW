//
//  Drink.h
//  Bar Cart
//
//  Created by John Chen on 4/12/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drink : NSObject
-(void) incrementInventoryCount: (int) incrementBy;
-(void) decrementInventoryCount: (int) decrementBy;

@end
