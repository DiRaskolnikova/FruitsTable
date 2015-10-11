//
//  BasketOddIterator.m
//  FruitsProject
//
//  Created by Diana on 10/2/15.
//  Copyright (c) 2015 Diana. All rights reserved.
//

#import "BasketOddIterator.h"

@implementation BasketOddIterator

@synthesize arrayOfFruit = _arrayOfFruit;
@synthesize currentNumber = _currentNumber;
@synthesize currentReverseNumber = _currentReverseNumber;
@synthesize isStraight = _isStraight;

-(bool) hasNext
{
    int stopIndex = ([[self arrayOfFruit]count]-1)/2;
    int curIndex = [[self currentNumber] intValue];
    if(curIndex==stopIndex  && [[self currentReverseNumber] intValue]==stopIndex+1)
        return false;
    return true;
}

-(id) next
{
    if([self hasNext]){
        if([self isStraight]){
            int a = [[self currentNumber] intValue] + 1;
            NSNumber *b = [NSNumber numberWithInt:a];
            [self setCurrentNumber: b];
            [self setIsStraight:false];
            return[ [self arrayOfFruit]objectAtIndex: [[self currentNumber] intValue] ];
        }
        else{
            int a = [[self currentReverseNumber] intValue] - 1;
            NSNumber *b = [NSNumber numberWithInt:a];
            [self setCurrentReverseNumber: b];
            [self setIsStraight:true];
            return[ [self arrayOfFruit]objectAtIndex: [[self currentReverseNumber] intValue] ];
        }
    }
    return NULL;
}

-(id) initWithArray: (NSMutableArray *) array
{
    self  = [super init];
    if(self){
        _isStraight = true;
        _currentNumber = @-1;
        _currentReverseNumber = @([array count]);
        [self setArrayOfFruit:array];
    }
    return self;
    
}
@end
