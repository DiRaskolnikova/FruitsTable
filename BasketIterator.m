//
//  BasketIterator.m
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "BasketIterator.h"

@implementation BasketIterator

@synthesize arrayOfFruit = _arrayOfFruit;
@synthesize currentNumber = _currentNumber;

-(bool) hasNext
{
    int a = [[self currentNumber] intValue];
    int b = (int)[[self arrayOfFruit]count]-1;
    if(a - b < 0){
        return true;
        
    }
    return false;
}

-(id) next
{
    if([self hasNext]){
       int a = [[self currentNumber] intValue] + 1;
       NSNumber *b = [NSNumber numberWithInt:a];
       [self setCurrentNumber: b];
       return[ [self arrayOfFruit]objectAtIndex: [[self currentNumber] intValue] ];
    }
    return NULL;
}

-(id) initWithArray: (NSMutableArray *) array
{
    self  = [super init];
    if(self){
        _currentNumber = @-1;
        [self setArrayOfFruit:array];
    }
    return self;
    
}

@end
