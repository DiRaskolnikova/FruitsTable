#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface Apple :  NSObject <Fruit>
@property NSString *sort;
@property BOOL isHang;
-(BOOL) drop;
-(id) init: (NSNumber *) seedC: (NSString *) sortName;

@end