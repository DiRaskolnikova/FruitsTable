//
//  Iterator.h
//  FruitsProject
//
//  Created by Diana on 9/25/15.
//  Copyright (c) 2015 Diana. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>
-(BOOL) hasNext;
-(id) next;

@end
