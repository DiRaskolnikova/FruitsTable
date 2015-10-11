//
//  BasketOddIterator.h
//  FruitsProject
//
//  Created by Diana on 10/2/15.
//  Copyright (c) 2015 Diana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@interface BasketOddIterator : NSObject <Iterator>

@property NSMutableArray * arrayOfFruit;
@property NSNumber * currentNumber;
@property NSNumber * currentReverseNumber;
@property BOOL isStraight;

-(id) initWithArray: (NSMutableArray *) array;
-(bool) hasNext;
-(id) next;

@end