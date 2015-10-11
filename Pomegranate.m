//
//  Pomegranate.m
//  FruitsProject
//
//  Created by Diana on 9/25/15.
//  Copyright (c) 2015 Diana. All rights reserved.
//

#import "Pomegranate.h"

@implementation Pomegranate
@synthesize seedCount = _seedCount;

-(id) initWithSeed: (NSNumber *) seedC
{
    self = [super init];
    if(self)
    {
        [self setSeedCount: seedC];
        NSLog(@"Pomegranate was created");
    }
    return self;
}

-(NSString *) description{
    NSString * descString = [NSString stringWithFormat: @"%@", @"Pomegranate"];
    return descString;
}

@end
