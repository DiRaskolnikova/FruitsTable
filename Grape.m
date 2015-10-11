//
//  Grape.m
//  FruitsProject
//
//  Created by Diana on 9/25/15.
//  Copyright (c) 2015 Diana. All rights reserved.
//

#import "Grape.h"

@implementation Grape

@synthesize seedCount = _seedCount;

-(id) initWithSeed: (NSNumber *) seedC
{
    self = [super init];
    if(self)
    {
        [self setSeedCount: seedC];
        NSLog(@"Grape was created");
    }
    return self;
}

-(NSString *) description{
    NSString * descString = [NSString stringWithFormat: @"%@", @"Grape"];
    return descString;
}

@end
