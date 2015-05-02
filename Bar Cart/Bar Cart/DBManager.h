//
//  DBManager.h
//  Bar Cart
//
//  Created by John Chen on 5/2/15.
//  Copyright (c) 2015 John Chen & Ellen Halpin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBManager : NSObject
-(instancetype)initWithDatabaseFilename:(NSString *)dbFilename;
@end
