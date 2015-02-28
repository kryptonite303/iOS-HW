//
//  main.m
//  Assignment 1
//
//  Created by John Chen on 2/2/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SiteValue *initial = [[SiteValue alloc]init];
        [initial setUsername:@"Frankenstein"];
        [initial setPassword:@"greenaboutyou"];
        [initial setCount:12];
        NSMutableDictionary *login = [[NSMutableDictionary alloc] init];
        SiteValue *yahoo = [[SiteValue alloc]init];
        SiteValue *nyu = [[SiteValue alloc]init];
        SiteValue *amazon = [[SiteValue alloc]init];
        SiteValue *aol = [[SiteValue alloc]init];
        [yahoo addUsername:@"Dracula" addPassword:@"biteoutatheapple" addCount:14];
        [nyu addUsername:@"Wazowski" addPassword:@"Sulley1549" addCount:89];
        [amazon addUsername:@"Kate Monster" addPassword:@"Monstersorri" addCount:14];
        [aol addUsername:@"Chocula" addPassword:@"bad!!teeth" addCount:0];
        [login setObject:initial forKey:@"Gmail"];
        [login setObject:yahoo forKey:@"Yahoo"];
        [login setObject:nyu forKey:@"NYU"];
        [login setObject:amazon forKey:@"Amazon"];
        [login setObject:aol forKey:@"AOL"];
        for (NSString *s in login) {
            [[login objectForKey:s] prettyPrint];
        }
        [login removeObjectForKey:@"AOL"];
        [login removeObjectForKey:@"Yahoo"];
        NSLog(@"\n********\nAfter Deleting\n********\n");
        for (NSString *s in login) {
            [[login objectForKey:s] prettyPrint];
        }
        for (NSString *s in login) {
            [[login objectForKey:s] incrementCount];
        }
        NSLog(@"\n********\nAfter Incrementing\n********\n");
        for (NSString *s in login) {
            [[login objectForKey:s] prettyPrint];
        }
    }
    return 0;
}
