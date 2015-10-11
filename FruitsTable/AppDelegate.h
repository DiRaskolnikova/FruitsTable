//
//  AppDelegate.h
//  FruitsTable
//
//  Created by Diana on 10/9/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Basket.h"
#import "Apple.h"
#import "Grape.h"
#import "Pomegranate.h"
#import "Fruit.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property Basket * basket;

@end
