//
//  BasketIterator.h
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@interface BasketIterator : NSObject <Iterator>

@property NSMutableArray * arrayOfFruit;
@property NSNumber * currentNumber;

-(id) initWithArray: (NSMutableArray *) array;
-(bool) hasNext;
-(id) next;

@end